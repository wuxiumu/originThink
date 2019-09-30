<?php

namespace app\admin\controller;

use app\admin\model\AuthGroup;
use app\admin\model\AuthGroupAccess;
use app\admin\model\AuthRule;
use app\admin\service\UserService;
use app\admin\service\AuthGroupService;
use app\admin\model\User as UserModel;
use app\admin\model\Members as MembersModel;

class Member extends Common
{
    // 会员列表
    public function memberList()
    {
        if ($this->request->isAjax()) {
            $data = [
                'key' => $this->request->get('key', '', 'trim'),
                'limit' => $this->request->get('limit', 10, 'intval'),
            ];
            $list = MembersModel::withSearch(['name'], ['name' => $data['key']])
                ->hidden(['password'])
                ->paginate($data['limit'], false, ['query' => $data]);
            $user_date = [];
            foreach ($list as $key => $val) {
                $user_date[$key] = $val;
                // $user_date[$key]['title'] = $val->group_titles; 其它信息
            }
            return show($user_date, 0, '', ['count' => $list->total()]);
        }
        
        return $this->fetch();
    }

    /**
     * 获取会员信息
     * @return mixed|void
     */
    public function memberInfo()
    {
        if (!$this->request->isAjax()) {
            $info = MembersModel::get($this->uid)->hidden(['password']);
            // $info['group_titles'] = $info->group_titles;
            $info['profile_photo'] ? : $info['profile_photo'] = '/images/face.jpg';
            $this->assign('info', $info);
            return $this->fetch();
        } else {
            $data = [
                'name' => $this->request->post('name'),
                'profile_photo' => $this->request->post('profile_photo'),
            ];
            $res = MembersModel::update($data, ['id' => $this->id]);
            if ($res) {
                $code = 1;
                $msg = '保存成功';
            }else{
                $code = 0;
                $msg = '保存失败';
            }
            return show([], $code, $msg);
        }

    }

    /**
     * 添加、编辑会员
     * @return mixed
     * @author 原点 <467490186@qq.com>
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit()
    {
        if ($this->request->isPost()) {
            $data = $this->request->post();
            if ($data['uid']) {
                //编辑
                $res = UserService::edit($data);
                return $res;
            } else {
                //添加
                $data = UserService::add($data);
                return $data;
            }
        } else {
            $uid = $this->request->get('uid', 0, 'intval');
            if ($uid) {
                $list = UserModel::where('uid', '=', $uid)->hidden(['password'])->find();
                $list['group_id'] = AuthGroupAccess::where('uid', '=', $uid)->column('group_id');
                $this->assign('list', $list);
            }
            $grouplist = AuthGroup::column('id,title');
            $this->assign('grouplist', $grouplist);
            return $this->fetch();
        }
    }

    /**
     * 验证会员名是否存在
     * @return array
     * @throws \think\exception\DbException
     * @author 原点 <467490186@qq.com>
     */
    public function check()
    {
        $username = $this->request->get('username', '', 'trim');
        $res = UserModel::where('user', '=', $username)->field('uid')->find();
        if ($res) {
            $msg = ['code' => 1, 'msg' => '账号已存在'];
        } else {
            $msg = ['status' => 0, 'info' => '验证通过'];
        }
        return $msg;
    }

    /**
     * 删除会员
     * @author 原点 <467490186@qq.com>
     */
    public function delete()
    {
        $uid = $this->request->param('uid', 0, 'intval');
        if ($uid) {
            if ($uid != 1) {
                $res = UserService::delete($uid);
                return $res;
            } else {
                $this->error('无法删除超级管理员');
            }
        } else {
            $this->error('参数错误');
        }
    }    

    /**
     * 修改密码
     * @return array|mixed
     * @author 原点 <467490186@qq.com>
     * @throws \think\Exception\DbException
     */
    public function editPassword()
    {
        if ($this->request->isPost()) {
            $data = input();
            $user = session('user_auth');
            $res = UserService::editPassword($user['uid'], $data['oldpassword'], $data['password']);
            return $res;
        } else {
            return $this->fetch();
        }
    }
}