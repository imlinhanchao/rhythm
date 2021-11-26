<#--

    Rhythm - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Modified version from Symphony, Thanks Symphony :)
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title id='headTitle'></title>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="../../../../games/ratel/css/client.css">
    <link type="text/css" rel="stylesheet" href="../../../../games/ratel/css/console.css">
    <link rel="stylesheet" href="../../../../games/ratel/libs/font-awesome-4.7.0/css/font-awesome.min.css">
    <link type="image/x-icon" rel="shortcut icon" />
</head>
<body>
    <iframe id="site" width="100%" height="100%" scrolling="no" frameborder="0" style="position: absolute;"></iframe>

    <!--chrome console ui-->
    <div id="console">
        <div class="tools" >
            <div class="options">
                <i class="fa fa-external-link" aria-hidden="true"></i>
                <i style="margin-left:10px" class="fa fa-clone" aria-hidden="true"></i>&nbsp; &nbsp;
                <span class="split"></span>
            </div>
            <div class="options" style="border-bottom: 2px #2b7dda solid;" onclick="toVue()">Elements</div>
            <div class="options" onclick="toBaidu()">Console</div>
            <div class="options">Sources</div>
            <div class="options">Network</div>
            <div class="options">Application</div>
            <div class="options">Performance</div>
            <div class="options"><i class="fa fa-angle-double-right f-3x" aria-hidden="true" style="font-size:15px"></i></div>

            <div class="options" style="float:right;font-size: 15px;color:#555">
                <i class="fa fa-cog" aria-hidden="true"></i>
                <i style="margin-left:10px" class="fa fa-ellipsis-v" aria-hidden="true"></i>
                <i style="margin-left:10px" class="fa fa-times" aria-hidden="true"></i>
            </div>
            <div class="options" style="float:right;">
                <span class="split"></span>
            </div>
            <div style="float:right;margin-right:-13px">
                <div class="options"><i class="fa fa-times-circle" aria-hidden="true" style="color:red; border:1px #ccc solid; padding: 3px 6px 3px 6px;border-radius: 3px;"> <span style="color:#666;font-family: Arial;">1</span></i> <i class="fa fa-commenting" aria-hidden="true" style="color:rgb(37, 107, 211); border:1px #ccc solid; padding: 3px 6px 3px 6px;border-radius: 3px;"> <span style="color:#666;font-family: Arial;">83</span></i></div>
            </div>
        </div>
        <div class="tools" >
            <div class="options" style="font-size: 14px;color: #666">
                <i class="fa fa-step-forward" aria-hidden="true"></i>
                <i style="margin-left:10px" class="fa fa-ban fa-rotate-90" aria-hidden="true"></i>&nbsp; &nbsp;
                <span class="split"></span>
            </div>
            <div class="options">top</div>
            <div class="options" style="margin-left:80px">
                <i class="fa fa-play fa-rotate-90" aria-hidden="true" style="font-size:10px; color:#777"></i>
                <span class="split" style="margin-left:10px"></span>
            </div>
            <div class="options" style="margin-right:5px;padding-left: 0px;padding-right:0px">
                <i class="fa fa-eye" aria-hidden="true" style="font-size:15px; color:#555"></i>
                <span class="split" style="margin-left:10px"></span>
            </div>
            <div class="options" style="padding-left: 0px;">
                <input type="text" placeholder="Filter" style="background-color: #fff; height:16px; margin-top:3px;border:1px #ccc solid" id="switchWebsite"/>
            </div>
            <div class="options" style="margin-right:0px">Default levels</div>
            <div class="options" style="margin-left:0px;margin-right:0px;padding-left: 0px;padding-right:0px">
                <i class="fa fa-play fa-rotate-90" aria-hidden="true" style="font-size:10px; color:#777"></i>
                <span class="split" style="margin-left:10px"></span>
            </div>
            <div style="float:left;margin-right:20px">
                <div class="options"><i class="fa fa-commenting" aria-hidden="true" style="color:rgb(37, 107, 211); border:1px #ccc solid; padding: 3px 6px 3px 6px;border-radius: 3px;"> <span style="color:#666;font-family: Arial, Helvetica, sans-serif;">113 Issues</span></i></div>
            </div>
            <div class="options" style="float:right;font-size: 15px;color:#555">
                <i class="fa fa-cog" aria-hidden="true"></i>
            </div>
            <div class="options" style="float:right;float:right;margin-right:-13px">
                <span class="split"></span>
            </div>
        </div>
        <div id="terminal">
            <div id="bar"></div>
            <div id="content">
                <span>鱼油，欢迎来到鱼油斗地主~ 感谢客户端作者 <a href="https://github.com/marmot-z/js-ratel-client" target="_blank">marmot-z</a>，QQ群: <a href="https://jq.qq.com/?_wv=1027&k=OhGYB1EC" target="_blank">948365095</a></span></br>
            </div>
            <div id="prefix"><i class="fa fa-angle-right" aria-hidden="true" style='color:#2877d2;font-weight:bold;font-size: 16px;'></i></div>
            <input id="input" type="text"/>
        </div>
    </div>
</body>
<script type="text/javascript" src="../../../../games/ratel/js/assets/protobuf.min.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/enum.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/utils.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/poker.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/protocol.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/handler/handler.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/eventWrapper.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/toggleable.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/panel.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/wsClient.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/imClient.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/site.js"></script>
<script type="text/javascript" src="../../../../games/ratel/js/init.js"></script>
<script type="text/javascript" src="../../../../games/evolve/lib/jquery.min.js"></script>
<script src="${staticServePath}/js/lib/reconnecting-websocket.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        saveData: '',
        commentEditorPlaceholderLabel: '${commentEditorPlaceholderLabel}',
        langLabel: '${langLabel}',
        luteAvailable: ${luteAvailable?c},
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
        notificationCommentedLabel: '${notificationCommentedLabel}',
        notificationReplyLabel: '${notificationReplyLabel}',
        notificationAtLabel: '${notificationAtLabel}',
        notificationFollowingLabel: '${notificationFollowingLabel}',
        pointLabel: '${pointLabel}',
        sameCityLabel: '${sameCityLabel}',
        systemLabel: '${systemLabel}',
        newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        imgMaxSize: ${imgMaxSize?c},
        fileMaxSize: ${fileMaxSize?c},
        <#if isLoggedIn>
        currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
        csrfToken: '${csrfToken}'
        </#if>
    }

    <#if isLoggedIn>
    Label.userKeyboardShortcutsStatus = '${currentUser.userKeyboardShortcutsStatus}'
    </#if>

    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel")
    </#if>
</script>
<script>
    !function(p){"use strict";!function(t){var s=window,e=document,i=p,c="".concat("https:"===e.location.protocol?"https://":"http://","sdk.51.la/js-sdk-pro.min.js"),n=e.createElement("script"),r=e.getElementsByTagName("script")[0];n.type="text/javascript",n.setAttribute("charset","UTF-8"),n.async=!0,n.src=c,n.id="LA_COLLECT",i.d=n;var o=function(){s.LA.ids.push(i)};s.LA?s.LA.ids&&o():(s.LA=p,s.LA.ids=[],o()),r.parentNode.insertBefore(n,r)}()}({id:"JRkLwpTk0DlpkOHh",ck:"JRkLwpTk0DlpkOHh"});
</script>
</html>
