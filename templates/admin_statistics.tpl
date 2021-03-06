<div class="smallworldadmin_tab_container">
    <div class="smallworldadmin_tab_content">
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
                <{/section}>
            </table>

        </fieldset>
    </div>
    <span style="margin: 27%; height: 50px; position: relative;"><{$smarty.const._AM_SMALLWORLD_SP}></span>
</div>
<!-- end smallworld Admin -->
