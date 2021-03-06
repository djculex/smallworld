<div id="help-template" class="outer">
    <h1 class="head">Help:
        <a class="ui-corner-all tooltip" href="<{$xoops_url}>/modules/smallworld/admin/index.php"
           title="Back to the administration of SmallWorld"> SmallWorld
            <img src="<{xoAdminIcons home.png}>"
                 alt="Back to the Administration of SmallWorld">
        </a></h1>

    <h4 class="odd">Description</h4>

    <p class="even">Smallworld is a Social Network system. Inspired by the Srinivas Tamada tutorials on Facebook
        scripting. The base system has been re-written, adapted, and heavily expanded for XOOPS by Culex
        The module is featuring like/dislike, bookmarking, wall system, image gallery, and is using XIM if installed.
        The admin side is featuring deleting users, banning users based on time. A countdown is shown on user side to
        when it's back.. And many more features. It is fully supported by XOOPS version 2.5.0 and higher.<br> <br>
        Smallworld is released under the terms of the GNU General Public License (GPL) and is free to use and modify. It
        is free to redistribute as long as you abide by the distribution terms of the GPL.</p>

    <h4 class="odd">Install/uninstall</h4> <br>

    No special measures necessary, follow the standard installation process – extract the /smallworld folder into the
    ../modules directory. Install the
    module through Admin -> System Module -> Modules.<br> <br>

    Check to see if the downloaded Smallworld version is the latest released version.
    Turn cookie and JavaScript of your browser on.<br> <br>
    <b>Installing on a hosted platform</b>
    <ul>
        <li>Upload the unzipped folder Smallworld to your module directory.</li>
        <li>Install using XOOPS module install as any other module installation.</li>
        <li>Make the block visible for the user groups you want to see the block (admin/moderators etc etc).</li>
    </ul>

    <b>Upgrading from a previous version</b>
    <ul>
        <li>Make sure you are using newest version</li>
        <li>Read the readme.txt in archieve</li>
        <li>Maybe do a backup of your tables</li>
    </ul>
    Detailed instructions on installing modules are available in the
    <a href="https://www.gitbook.com/book/xoops/xoops-operations-guide/" target="_blank">XOOPS Operations Manual</a> <br> <br>


    <h4 class="odd">Operations</h4> <br>

    Detailed instructions on configuring the access rights for user groups are available in the
    <a href="https://www.gitbook.com/book/xoops/xoops-operations-guide/" target="_blank">Chapter 2.8 of our XOOPS Operations Manual</a><br> <br>

    <h4 class="odd">Problem solving</h4> <br>

    <b>I get blank page, can't click username, the block is not visible.......</b><br> <br>
    <ul>
        <li> Make sure your Xoops version is > 2.5.0. Older versions of Xoops don't have preloads, which are required.
        </li>
        <li>Turn on debug and check to see if any errors emerge.</li>
        <li>Using FireFox, right click on the screen, choose inspect element, choose console in the tabs and check to
            see if any errors
        </li>
        <li>If no errors, use Firebug (Right click->inspect element->console) and see if there are any jQuery errors.
        </li>
        <li>If there are no jQuery errors. Clean caches-> module update Smallworld, system modules.</li>
        <li>If the page is still blank, Go to your protector module -> settings and write smallworld in the form
            "Modules out of Dos / Crawler checker".
        </li>
    </ul>
    <br>

    <h4 class="odd">Tutorial</h4>

    <p class="even">There is no tutorial available at this time</p>

    <h4 class="odd">Ask Questions</h4>

    <p class="even">If still questions or errors please post at the <a href="https://xoops.org/modules/newbb">Xoops support Forum</a></p>

</div>
