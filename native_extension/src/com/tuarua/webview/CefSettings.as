/*
 * Copyright 2017 Tua Rua Ltd.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  Additional Terms
 *  No part, or derivative of this Air Native Extensions's code is permitted
 *  to be sold as the basis of a commercially packaged Air Native Extension which
 *  undertakes the same purpose as this software. That is, a WebView for Windows,
 *  OSX and/or iOS and/or Android.
 *  All Rights Reserved. Tua Rua Ltd.
 */
package com.tuarua.webview {

public class CefSettings {
    [Deprecated(replacement="Settings.contextMenu")]
    public var contextMenu:ContextMenu = new ContextMenu();
    [Deprecated(replacement="Settings.enableDownloads")]
    public var enableDownloads:Boolean = true;
    /**
     * <p>Set to a value between 1024 and 65535 to enable remote debugging on the specified
     * port. For example, if 8080 is specified the remote debugging URL will be http://localhost:8080.
     * CEF can be remotely debugged from any CEF or Chrome browser window. Also configurable
     * using the "remote-debugging-port" command-line switch.</p>
     */
    public var remoteDebuggingPort:int = 8088;
    /**
     * <p>The location where cache data will be stored on disk. If empty then browsers
     * will be created in "incognito mode" where in-memory caches are used for storage
     * and no data is persisted to disk. HTML5 databases such as localStorage will only
     * persist across sessions if a cache path is specified. Can be overridden for individual
     * CefRequestContext instances via the RequestContextSettings.CachePath value.</p>
     */
    public var cachePath:String = "cache";//set to empty
    /**
     * <p>The log severity. Only messages of this severity level or higher will be logged.
     * Also configurable using the "log-severity" command-line switch with a value of
     * "verbose", "info", "warning", "error", "error-report" or "disable".</p>
     */
    public var logSeverity:int = LogSeverity.DISABLE;
    /**
     *  <p>Add custom command line argumens to this collection, they will be added in
     OnBeforeCommandLineProcessing.</p>
     */
    public var commandLineArgs:Vector.<Object> = new <Object>[];

    /**
     <p>The path to a separate executable that will be launched for sub-processes. By
     default the browser process executable is used.</p>
     */
    public var browserSubprocessPath:String = "CefSharp.BrowserSubprocess.exe";

    [Deprecated(replacement="Settings.downloadPath")]
    public var downloadPath:String;

    /**
     * <p> The location where user data such as spell checking dictionary files will be stored on disk.
     * If empty then the default platform-specific user data directory
     * "Local Settings\Application Data\CEF\User Data"directory under the user profile directory on Windows).</p>
     */
    public var userDataPath:String;

    public function CefSettings() {
    }
}
}

