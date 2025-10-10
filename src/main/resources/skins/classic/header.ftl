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
<script src="${staticServePath}/js/lib/lottie.min.js"></script>
<script src="${staticServePath}/js/lib/logo.js"></script>
<div class="nav">
    <h1 aria-label="${symphonyLabel}" class="tooltipped tooltipped-s">
        <a href="${servePath}">
            <div class="h-[55px] w-[55px] pb-[6px]" id="logo-animate"></div>
            <script>
                var params = {
                    container: document.getElementById('logo-animate'),
                    renderer: 'svg',
                    loop: false,
                    autoplay: false,
                    animationData: logoData
                };

                var anim;
                anim = lottie.loadAnimation(params);
                anim.goToAndPlay(27, true)
                setTimeout(function () {
                    $('#logo-animate').on('mouseenter', function(){
                        anim.goToAndPlay(10, true)
                    });
                }, 1000);
            </script>
        </a>
    </h1>
    <div class="md:hidden nav-tabs">
        <a pjax-title="${latestLabel} - ${symphonyLabel}"
           href="${servePath}/recent"<#if selected?? && 'recent' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#refresh"></use>
            </svg> ${latestLabel}</a>
        <a pjax-title="${hotLabel} - ${symphonyLabel}"
           href="${servePath}/hot"<#if selected?? && 'hot' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#fire"></use>
            </svg> ${hotLabel}</a>
        <a pjax-title="${chatRoomLabel} - ${symphonyLabel}"
           href="${servePath}/cr"<#if selected?? && 'cr' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#chat"></use>
            </svg> ${chatRoomLabel}</a>
        <a pjax-title="${domainLabel} - ${symphonyLabel}"
           href="${servePath}/domains"<#if selected?? && 'domains' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#domain"></use>
            </svg> ${domainLabel}</a>
        <a pjax-title="${breezemoonLabel} - ${symphonyLabel}"
           href="${servePath}/breezemoons"<#if selected?? && 'breezemoons' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#breezemoons"></use>
            </svg> ${breezemoonLabel}</a>
        <a pjax-title="${qnaLabel} - ${symphonyLabel}"
           href="${servePath}/qna"<#if selected?? && 'qna' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#iconAsk"></use>
            </svg> ${qnaLabel}</a>
        <a href="${servePath}/perfect"<#if selected?? && 'perfect' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#perfect"></use>
            </svg> ${perfectLabel}</a>
        <#if isLoggedIn && "" != currentUser.userCity>
        <a href="${servePath}/city/my"<#if selected?? && 'city' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#local"></use>
            </svg> ${currentUser.userCity}</a>
        </#if>
        <a href="${servePath}/top"<#if selected?? && 'top' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#rank"></use>
            </svg> ${totalRankLabel}</a>
        <#if isLoggedIn>
        <a href="${servePath}/watch"<#if selected?? && 'watch' == selected> class="current"</#if>>
            <svg>
                <use xlink:href="#view"></use>
            </svg> ${followLabel}</a>
        </#if>
    </div>
    <#if esEnabled || algoliaEnabled>
    <form class="responsive-hide fn-left" target="_blank" action="/search">
        <input class="search" placeholder="搜索你感兴趣的内容" type="text" name="key" id="search"
               value="<#if key??>${key}</#if>">
        <input type="submit" class="fn-none" value=""/>
    </form>
    </#if>
    <div class="user-nav space-x-1">
        <#if isLoggedIn>
            <#if permissions["menuAdmin"].permissionGrant>
            <a href="${servePath}/admin" aria-label="${adminLabel}" class="tooltipped tooltipped-w btn btn-ghost btn-circle">
                <svg>
                    <use xlink:href="#manage"></use>
                </svg>
            </a>
            </#if>
            <a href="${servePath}/activities" aria-label="${activityLabel}" class="tooltipped tooltipped-w btn btn-ghost btn-circle">
                <svg>
                    <use xlink:href="#playgame"></use>
                </svg>
            </a>
            <#include "theme-change.ftl">
            <a id="aNotifications"
               class="badge badge-soft p-2 mr-2 tooltipped tooltipped-w <#if unreadNotificationCount == 0>no-msg<#else>msg</#if>"
               href="${servePath}/notifications" aria-label="${messageLabel}">
                <svg class="h-[15px] pointer-events-none">
                    <use xlink:href="#notification"></use>
                </svg>
                <span id="aNotificationCount">${unreadNotificationCount}</span>
            </a>
            <a id="aChat" href="${servePath}/chat" class="badge badge-soft p-2 mr-2 tooltipped tooltipped-w no-msg" aria-label="私信">
                <svg class="h-[15px]">
                    <use xlink:href="#idleChat"></use>
                </svg>
                <span id="aChatCount"><#if unreadChat?? && unreadChat gt 0>${unreadChat}<#else>0</#if></span>
            </a>
            <#if unreadChat?? && unreadChat gt 0>
                <script>
                    if (window.location.pathname !== "/chat") {
                        setTimeout(function () {
                            Util.blingChat();
                        }, 1000);
                    }
                </script>
            </#if>
            <a href="${servePath}/pre-post" class="btn btn-xs btn-soft btn-primary">
                <svg style="height: 16px">
                    <use xlink:href="#addpost"></use>
                </svg>
                <span>发帖</span>
            </a>
            <div id="aPersonListPanel" class="cursor-pointer block avatar avatar-placeholder ml-2" data-url="${servePath}/member/${currentUser.userName}">
                <div class="ring-primary ring-offset-base-100 w-[30px] h-[30px] rounded-full ring-2 ring-offset-2">
                    <img src="${currentUser.userAvatarURL48}" />
                </div>
            </div>
            <div class="menu bg-base-200 rounded-box person-list shadow-lg" id="personListPanel">
                <ul>
                    <li>
                        <a href="${servePath}/member/${currentUser.userName}">${goHomeLabel}</a>
                    </li>
                    <li>
                        <a href="${servePath}/settings">${settingsLabel}</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="Count.settings();">⏰ 下班倒计时</a>
                    </li>
                    <li>
                        <a href="${servePath}/settings/help">${helpLabel}</a>
                    </li>
                    <li>
                        <a href="javascript:Util.logout()">${logoutLabel}</a>
                    </li>
                </ul>
            </div>
        <#else>
            <#include "theme-change.ftl">
            <a href="javascript:Util.goLogin();" class="unlogin">${loginLabel}</a>
            <a href="javascript:Util.goRegister()" class="unlogin">${registerLabel}</a>
        </#if>
    </div>
</div>
