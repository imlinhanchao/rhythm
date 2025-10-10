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
<div class="dropdown dropdown-end block ">
  <a tabindex="0" role="button" class="btn btn-ghost btn-circle tooltipped tooltipped-w" aria-label="主题设置">
    <svg>
        <use xlink:href="#theme-paint"></use>
    </svg>
  </a>
  <div tabindex="0" class="dropdown-content bg-base-200 text-base-content rounded-box top-px h-[30.5rem] max-h-[calc(100vh-8.6rem)] overflow-y-auto border-[length:var(--border)] border-white/5 shadow-2xl outline-[length:var(--border)] outline-black/5 mt-8">
      <ul class="menu w-56" id="theme-menu">
        <li class="menu-title text-xs">主题</li>
        <li v-for="theme in themeList" :key="theme">
          <div @click="setTheme(theme)" role="button"  class="gap-3 px-2 [&_svg]:visible" :data-set-theme="theme" data-act-class="[&_svg]:visible">
            <div :data-theme="theme" class="bg-base-100 grid shrink-0 grid-cols-2 gap-0.5 rounded-md p-1 shadow-sm">
              <div class="bg-base-content size-1 rounded-full"></div>
              <div class="bg-primary size-1 rounded-full"></div>
              <div class="bg-secondary size-1 rounded-full"></div>
              <div class="bg-accent size-1 rounded-full"></div>
            </div>
            <div class="w-32 truncate">{{theme}}</div>
            <svg v-if="theme === currentTheme" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="currentColor" class="invisible h-3 w-3 shrink-0">
              <path d="M20.285 2l-11.285 11.567-5.286-5.011-3.714 3.716 9 8.728 15-15.285z"></path>
            </svg>
          </div>
        </li>
    </ul>
  </div>
</div>
<script src="${staticServePath}/js/theme.min.js?${staticResourceVersion}"></script>