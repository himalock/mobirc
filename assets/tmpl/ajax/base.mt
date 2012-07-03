<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type"  content="text/html; charset=UTF-8" />
        <meta http-equiv="Cache-Control" content="max-age=0" />
        <meta http-equiv="content-script-type" content="text/javascript" />
        <meta name="robots" content="noindex,nofollow" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
        <link rel="stylesheet" href="/static/bootstrap.min.css" type="text/css" />
        <link type="text/css" href="/static/droppy/droppy.css" rel="stylesheet" />
        <link rel="stylesheet" href="/static/pc.css" type="text/css" />
        <link rel="stylesheet" href="/static/mobirc.css" type="text/css" />
        <title>mobirc</title>
        <link type="text/css" href="/static/css/ui-lightness/jquery-ui-1.8.2.custom.css" rel="stylesheet" />
        <link type="text/css" href="/static/css/jquery.jgrowl.css" rel="stylesheet" />
        <script type="text/javascript" src="/static/js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="/static/js/jquery-ui-1.8.2.custom.min.js"></script>
        <script type="text/javascript" src="/static/js/jquery.jgrowl_minimized.js"></script>
        <script type="text/javascript" src="/static/js/jquery.ev.js"></script>
        <script type="text/javascript" src="/static/js/jquery.layout-latest.js"></script>
        <script type="text/javascript" src="/static/droppy/jquery.droppy.js"></script>
        <script type="text/javascript">
            window.mobircDefaultServer = '<?= javascript_value_escape global_context->servers->[0]->id ?>';
        </script>
        <script src="/static/mobirc.js?v=6" type="text/javascript"></script>
    </head>
    <body>
        <div id="BodyWrapper">
            <ul id="nav">
                <li>
                    <a href="#">Channel</a>
                    <ul>
                        <li><a href="#" id="MenuBtnChannelShowTopic">show topic</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Server</a>
                    <ul>
                        <li><a href="#" id="MenuBtnClearAllUnread">clear all unread</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Help</a>
                    <ul>
                        <li><a href="#" id="MenuBtnAbout">about</a></li>
                    </ul>
                </li>
            </ul>

            <div id="PageBody">
                <div id="Main" class="ui-layout-center">
                    <div id="ChannelPane" class="ui-layout-center">
                        <div id="ChannelLog">log pain</div>
                        <form onsubmit=" return false;" id="CommandForm">
                            <input type="text" id="msg" name="msg" size="30" autocomplete="off" />
                            <input type="button" value="send" id="SendButton" class="btn" />
                        </form>
                    </div>
                    <div id="CombinedLog" class="ui-layout-south">combined log pain</div>
                </div>
                <div id="Side" class="ui-layout-east">
                    <div id="NickContainer" class="ui-layout-center">&nbsp;</div>
                    <div id="ChannelContainer" class="ui-layout-south"></div>
                </div>
            </div>
        </div>

        <div id="DialogAbout" title="About Mobirc" style="display: none;">
            Mobirc version <?= $App::Mobirc::VERSION ?>
        </div>

?       # TODO: move this part to Plugin::DocRoot
        <script lang="javascript">
            docroot='<?= docroot() ?>';
        </script>
    </body>
</html>
