<?php
/**
 * 后台管理路由
 */

/**
 * 免权限验证路由
 */
Route::group('admin', [
    'login$'=>'admin/Login/login',                                         //登录
    'editPassword'=>'admin/User/editPassword',                             //重置密码
    'logout$'=>'admin/Login/logout',                                       //退出
    'check$'=>'admin/User/check',                                          //验证用户是否存在
    'unlock'=>'admin/Login/unlock',                                        //验证用户是否存在
    'verify'=>'admin/Login/verify',                                        //获取验证码
])->ext('html');

/**
 * 需要权限验证路由
 */
Route::group('admin', [

    //首页
    'index$'=>'admin/Index/index',                                           //首页
    'home'=>'admin/Index/home',                                              //系统信息

    //用户管理
    'userList$'=>'admin/User/userList',                                      //用户列表
    'userInfo$'=>'admin/User/userInfo',                                      //用户信息
    'edit$'=>'admin/User/edit',                                              //添加/编辑用户
    'delete$'=>'admin/User/delete',                                          //删除用户
    'groupList$'=>'admin/User/groupList',                                    //用户组列表
    'editGroup$'=>'admin/User/editGroup',                                    //添加编辑用户组
    'disableGroup$'=>'admin/User/disableGroup',                              //禁用用户组
    'ruleList$'=>'admin/User/ruleList',                                      //用户组规则列表
    'editRule$'=>'admin/User/editRule',                                      //修改用户组规则

    //系统管理
    'cleanCache$'=>'admin/System/cleanCache',                                //清除缓存
    'log$'=>'admin/System/loginLog',                                         //登录日志
    'downlog$'=>'admin/System/downLoginLog',                                 //下载登录日志
    'menu$'=>'admin/System/menu',                                            //系统菜单
    'editMenu$'=>'admin/System/editMenu',                                    //编辑菜单
    'deleteMenu$'=>'admin/System/deleteMenu',                                //删除菜单
    'config'=>'admin/System/config',                                         //系统配置
    'siteConfig'=>'admin/System/siteConfig',                                 //站点配置
    'noticeConfig'=>'admin/System/noticeConfig',                             //公告配置
    //上传管理
    'upload'=>'admin/Upload/index',                                          //上传图片


    // 分类
    'columnList$'=>'admin/Column/columnList',                                      //用户列表
    'columnInfo$'=>'admin/Column/ColumnInfo',                                      //用户信息
    'editColumn$'=>'admin/Column/edit',                                            //添加/编辑用户
    'deleteColumn$'=>'admin/Column/delete',                                        //删除用户
    'disableColumn$'=>'admin/Column/disable',                                      //禁用用户组


    // 栏目

    // 会员管理：会员的注册和登录，发表博文和评论。 members : name path password profile_photo telephone nickname create_at update_at status disable
    'memberList$'=>'admin/Member/memberList',                                     
    'memberInfo$'=>'admin/Member/memberInfo',                                      
    'editMember$'=>'admin/Member/edit',                                             
    'deleteMember$'=>'admin/Member/delete', 

    // 好友 member_friends : member_id friends_id note status
    'memberfriendsList$'=>'admin/Membefriendsr/memberfriendsList',                  
    'memberfriendsInfo$'=>'admin/Memberfriends/memberfriendsInfo',                 
    'editMemberfriends$'=>'admin/Memberfriends/edit',                               

    // [文章排序] set_artitle_sort ： article_id sort_id
    // [相册管理] ： album ： pid type[article] pic [真实删除]
    // 博文管理：用户可以在网站中发表和设置博文。 articles : member_id title content views create_at update_at status disable
    'articleList$'=>'admin/Article/articleList',                                   
    'articleInfo$'=>'admin/Article/articleInfo',                                    
    'editArticle$'=>'admin/Article/edit',                                          
    'deleteArticle$'=>'admin/Article/delete',                                      
    ## 组合搜索

    // 评论管理：用户可以评论博文和回复其他用户的评论。comments : member_id article_id comment_like_count comment_content pid create_at update_at status disable
    'commentList$'=>'admin/Comment/commentList',                                   
    'commentInfo$'=>'admin/Comment/commentInfo',                                   
    'editComment$'=>'admin/Comment/edit',                                          
    'deleteComment$'=>'admin/Comment/delete',                                   

    // 分类管理：添加和删除分类，给文章设置分类。sorts ： name alias desc pid
    'sortList$'=>'admin/Sort/sortList',                                       
    'sortInfo$'=>'admin/Sort/sortInfo',                                      
    'editSort$'=>'admin/Sort/edit',                                          
    'deleteSort$'=>'admin/Sort/delete',                                    

    // [文章标签] set_artitle_label ： article_id label_id  
    // 标签管理：添加和删除标签，给文章设置标签。 labels : name alias desc
    'artitlelabelList$'=>'admin/Artitlelabel/artitlelabelList',                                       
    'artitlelabelInfo$'=>'admin/Artitlelabel/artitlelabelInfo',                                      
    'editArtitlelabel$'=>'admin/Artitlelabel/edit',                                          
    'deleteArtitlelabel$'=>'admin/Artitlelabel/delete', 

    

])->middleware(app\admin\middleware\CheckAuth::class)->ext('html');          //使用中间件验证

/**
 * miss路由
 * 没有定义的路由全部使用该路由
 */
Route::miss('admin/Login/login');
return [

];
