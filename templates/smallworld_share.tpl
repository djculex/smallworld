<body>
<div id="example1" class="smallworld_content">
    <table class="smallworld_biotable">
        <tr>
            <td></td>
            <span class="smallworld_search">
                <td>
                    <br>
                    <br>
                    <div id="smallworld_wall_container">
                        <div id="smallworld_content">
	                    <{foreach item=post from=$walldata}>
	                        <script type="text/javascript">
	                            xoops_smallworld(document).ready(function () {
	                                xoops_smallworld('#smallworld_stexpand<{$post.msg_id}>').oembed('<{$post.orimessage}>', {
	                                    maxWidth: "100%",
	                                    maxHeight: "100%"
	                                });
	                            });
	                        </script>

                            <div class="smallworld_stbody" id="smallworld_stbody<{$post.msg_id}>">
                                <div class="smallworld_stimg">
                                    <img src="<{$post.avatar_link}>" class="smallworld_big_face" <{$post.avatar_highwide}>>
                                </div>

                                <div class="smallworld_sttext">
                                    <b><a class="smallworld_wall_link" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$post.username}>"><{$post.username}></a></b> <{$post.message}>
                                    <div class="smallworld_sttime"><{$post.created}><{$post.sharelink}></div>
                                    <{$post.sharediv}>
                                    <div id="smallworld_stexpandbox">
                                        <div id="smallworld_stexpand<{$post.msg_id}>"></div>
                                    </div>
                                </div>
                                <br><br>
                            </div>
                            <br><br>
                        <{/foreach}>
                        </div>
                    </div>
                </td>
            </span>
        </tr>
    </table>
</div>
</body>
