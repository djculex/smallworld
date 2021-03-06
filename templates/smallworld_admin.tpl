<!-- start smallworld Admin-->
<ul class="smallworldadmin_tabs">
    <li><a href="#smallworldadmin_tab1" title="<{$lang_moduleinfo}>"><{$lang_moduleinfo}></a></li>
    <li><a href="#smallworldadmin_tab2" title="<{$lang_statistics}>"><{$lang_statistics}></a></li>
    <li><a href="#smallworldadmin_tab3" title="<{$lang_adminmessagesend}>"><{$lang_useradmin}></a></li>
    <li><a href="#smallworldadmin_tab5" title="<{$lang_help}>"><{$lang_help}></a></li>
    <li><a href="#smallworldadmin_tab6" title="<{$lang_prefs}>"><{$lang_prefs}></a></li>

</ul>
<div class="smallworldadmin_tab_container">
    <div id="smallworldadmin_tab1" class="smallworldadmin_tab_content">
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_moduleinfo}></legend>
            <p class="smallworldadmin"><{$lang_installversion}> : <{$installversion}></p>
            <p class="smallworldadmin"><{$lang_installdate}> : <{$installdate}></p>
        </fieldset>
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_installversion_status}></legend>
            <p class="smallworldadmin"><{$installversion_status}></p>
        </fieldset>
    </div>

    <div id="smallworldadmin_tab2" class="smallworldadmin_tab_content">
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_userstats}></legend>
            <p class="smallworldadmin"><{$lang_dateoffirstmessage}> : <{$dateoffirstmessage}></p>
            <p class="smallworldadmin"><{$lang_totalusers}> : <{$totalusers}></p>
            <p class="smallworldadmin"><{$lang_averagemsgperday}> : <{$averagemsgperday}></p>
            <p class="smallworldadmin"><{$lang_topchatterstoday}></p>
            <table class="smallworldadmin">
                <{section name=i loop=$topusertoday}>
                <tr>
                    <td class="smallworldadmin"><{$topusertoday[i].img}></td>
                    <td class="smallworldadmin"><{$topusertoday[i].counter}></td>
                    <td class="smallworldadmin"><{$topusertoday[i].from}></td>
                    <td class="smallworldadmin"><{$topusertoday[i].cnt}></td>
                    <td class="smallworldadmin"><{$lang_messages}></td>
                </tr>
                <{sectionelse}>
                <tr><td colspan="5"><{$smarty.const._AM_SMALLWORLD_NO}></td></tr>
                <{/section}>
            </table>
            <p class="smallworldadmin"><{$lang_topchatters}></p>
            <table class="smallworldadmin">
                <{section name=i loop=$topuser}>
                <tr>
                    <td class="smallworldadmin"><{$topuser[i].img}></td>
                    <td class="smallworldadmin"><{$topuser[i].counter}></td>
                    <td class="smallworldadmin"><{$topuser[i].from}></td>
                    <td class="smallworldadmin"><{$topuser[i].cnt}></td>
                    <td class="smallworldadmin"><{$lang_messages}></td>
                </tr>
                <{sectionelse}>
                <tr><td colspan="5"><{$smarty.const._AM_SMALLWORLD_NO}></td></tr>
                <{/section}>
            </table>
            <p class="smallworldadmin"><{$lang_toprated}></p>
            <table class="smallworldadmin">
                <{section name=i loop=$topratedusers}>
                <tr>
                    <td class="smallworldadmin"><{$topratedusers[i].img}></td>
                    <td class="smallworldadmin"><{$topratedusers[i].counter}></td>
                    <td class="smallworldadmin"><{$topratedusers[i].user}></td>
                    <td class="smallworldadmin"><{$topratedusers[i].cnt}></td>
                    <td class="smallworldadmin"><img height="8px" width="8px" src="../assets/images/like.png"></td>
                </tr>
                <{sectionelse}>
                <tr><td colspan="5"><{$smarty.const._AM_SMALLWORLD_NO}></td></tr>
                <{/section}>
            </table>
            <p class="smallworldadmin"><{$lang_bottomrated}></p>
            <table class="smallworldadmin">
                <{section name=i loop=$bottomratedusers}>
                <tr>
                    <td class="smallworldadmin"><{$bottomratedusers[i].img}></td>
                    <td class="smallworldadmin"><{$bottomratedusers[i].counter}></td>
                    <td class="smallworldadmin"><{$bottomratedusers[i].user}></td>
                    <td class="smallworldadmin"><{$bottomratedusers[i].cnt}></td>
                    <td class="smallworldadmin"><img height="8px" width="8px" src="../assets/images/dislike.png"></td>
                </tr>
                <{sectionelse}>
                <tr><td colspan="5"><{$smarty.const._AM_SMALLWORLD_NO}></td></tr>
                <{/section}>
            </table>

        </fieldset>
    </div>

    <div id="smallworldadmin_tab3" class="smallworldadmin_tab_content">
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_useradmin}></legend>
            <p class="smallworldadmin"><{$smarty.const._AM_SMALLWORLD_USERADMIN_TITLE}></p>
            <div id="smallworld_admin_allusers">
                <{if $allusersinspectcounter > 0}>
                <legend class="smallworldadmin_legend"><{$smarty.const._AM_SMALLWORLD_USERADMININSPECT_TITLE}></legend>
                <table id="smallworld_admin_allusers_table">
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_IMAGE}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_USERNAME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_REALNAME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_IP}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_COMPLAINTS}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTTIME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTADD}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTDELETE}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_DELETEUSER}></th>
                    <{foreach item=post from=$allusersinspect}>
                    <tr>
                        <td>
                            <img src="<{$post.userimage}>" <{$post.avatar_highwide}>>
                        </td>
                        <td><{$post.username}></td>
                        <td><{$post.realname}></td>
                        <td><{$post.ip}></td>
                        <td><{$post.complaint}></td>
                        <td>
                                <span id="clock-<{$post.userid}>">
                                </span>
                            <script type='text/javascript'>
                                (function ($) {
                                    $(function () {
                                        $('#clock-<{$post.userid}>').countdown({onExpiry: SmallworldCountdownliftOff, until: + < {$post.userinspect_timetotal} >
                                    })
                                    });
                                })(jQuery);
                            </script>

                        </td>

                        <td>
                                <span id="smallworld_addmoretime">
                                <select rel="<{$post.userid}>" id="smallworld_addmoretime_options<{$post.userid}>">
                                    <option id="<{$post.userid}>" value="0"><{$smarty.const._AM_SMALLWORLD_ADDTIMEDROPDOWN_NOCHANGE}></option>
                                    <{section name=addtimevalue start=1 loop=61 step=1}>
                                        <option rel="<{$post.userid}>" value="<{$smarty.section.addtimevalue.index}>">
                                            <{$smarty.section.addtimevalue.index}><{$smarty.const._AM_SMALLWORLD_ADDTIMEDROPDOWN_MINUTES}>
                                        </option>
                                    <{/section}>
                                </select>
                                </span>
                            <img id="smallworld_addtime_img" rel="<{$post.userid}>" height="16px" width="16px" src="../assets/images/time_add.png">
                        </td>
                        <td>
                            <img id="smallworld_deletetime_img" rel="<{$post.userid}>" height="16px" width="16px" src="../assets/images/time_delete.png">
                        </td>
                        <td>
                            <img id="smallworld_accountdelete_img" name="<{$post.username}>" rel="<{$post.userid}>" height="16px" width="16px" src="../assets/images/accountdelete.png">
                        </td>

                    </tr>
                    <{/foreach}>
                </table>
                <{/if}>

                <br>

                <{if $allusersnoinspectcounter > 0}>
                <table id="smallworld_admin_allusers_table">
                    <legend class="smallworldadmin_legend"><{$smarty.const._AM_SMALLWORLD_USERADMINNOINSPECT_TITLE}></legend>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_IMAGE}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_USERNAME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_REALNAME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_IP}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_COMPLAINTS}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTTIME}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTADD}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_INSPECTDELETE}></th>
                    <th><{$smarty.const._AM_SMALLWORLD_TITLE_DELETEUSER}></th>

                    <{foreach item=posts from=$allusersnoinspect}>
                    <tr>
                        <td>
                            <img src="<{$posts.userimage}>" <{$posts.avatar_highwide}>>
                        </td>
                        <td><{$posts.username}></td>
                        <td><{$posts.realname}></td>
                        <td><{$posts.ip}></td>
                        <td><{$posts.complaint}></td>
                        <td>
                        </td>

                        <td>
                                <span id="smallworld_addmoretime">
                                <select rel="<{$posts.userid}>" id="smallworld_addmoretime_options<{$posts.userid}>">
                                    <option value="0"><{$smarty.const._AM_SMALLWORLD_ADDTIMEDROPDOWN_NOCHANGE}></option>
                                    <{section name=addtimevalue start=1 loop=61 step=1}>
                                        <option value="<{$smarty.section.addtimevalue.index}>">
                                            <{$smarty.section.addtimevalue.index}><{$smarty.const._AM_SMALLWORLD_ADDTIMEDROPDOWN_MINUTES}>
                                        </option>
                                    <{/section}>
                                </select>
                                </span>
                            <img id="smallworld_addtime_img" rel="<{$posts.userid}>" height="16px" width="16px" src="../assets/images/time_add.png">
                        </td>
                        <td>
                            <img id="smallworld_deletetime_img" rel="<{$posts.userid}>" height="16px" width="16px" src="../assets/images/time_delete.png">
                        </td>
                        <td>
                            <img id="smallworld_accountdelete_img" name="<{$posts.username}>" rel="<{$posts.userid}>" height="16px" width="16px" src="../assets/images/accountdelete.png">
                        </td>

                    </tr>
                    <{/foreach}>
                </table>
                <{/if}>
            </div>
        </fieldset>
    </div>

    <div id="smallworldadmin_tab5" class="smallworldadmin_tab_content">
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_about}></legend>
            <p class="smallworldadmin"><{$lang_hlp_preface}></p>
        </fieldset>

        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_requirements_t}></legend>
            <p class="smallworldadmin"><{$lang_hlp_requirements}></p>
        </fieldset>
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_recommended_t}></legend>
            <p class="smallworldadmin"><{$lang_hlp_recommended}></p>
        </fieldset>
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_installation_t}></legend>
            <p class="smallworldadmin"><{$lang_hlp_firsttime}></p>
            <h2><{$lang_hlp_hostedplatform_t}></h2>
            <p class="smallworldadmin"><{$lang_hlp_hostedplatform}></p>
            <h2><{$lang_hlp_upgrading_t}></h2>
            <p class="smallworldadmin"><{$lang_hlp_upgrading}></p>
        </fieldset>
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_faq_t}></legend>
            <h2><{$lang_hlp_commen1_t}></h2>
            <p class="smallworldadmin"><{$lang_hlp_commen1}></p>
        </fieldset>
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_hlp_contacts_t}></legend>
            <p class="smallworldadmin"><{$lang_hlp_otherhelp}></p>
        </fieldset>
    </div>

    <div id="smallworldadmin_tab6" class="smallworldadmin_tab_content">
        <fieldset>
            <legend class="smallworldadmin_legend"><{$lang_prefs}></legend>
            <p class="smallworldadmin"><{$lang_prefslink}></p>
        </fieldset>
    </div>
    <span style="margin: 27%; height: 50px; position: relative;"><{$smarty.const._AM_SMALLWORLD_SP}></span>
</div>
<!-- end smallworld Admin -->
