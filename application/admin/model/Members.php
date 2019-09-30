<?php
/**
 * Created by originThink
 * Author: 原点 467490186@qq.com
 * Date: 2018/1/16
 * Time: 15:38
 */

namespace app\admin\model;

use think\Model;

class Members extends Model
{
    protected $autoWriteTimestamp = true;
    protected $pk = 'id'; //主键
    protected $type = [
        'last_login_time' => 'timestamp',
    ];

    /**
     * 搜索器
     * @param $query
     * @param $value
     */
    public function searchNameAttr($query, $value)
    {
        if ($value) {
            $query->where('nickname|name', 'like', '%' . $value . '%');
        }
    }
}