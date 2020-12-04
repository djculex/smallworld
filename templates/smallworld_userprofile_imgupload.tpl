<{if $xoops_isuser}>
<{if $check >= 2}>
<div id="file_upload" class="smallworld_content" title="<{$smarty.const._SMALLWORLD_UPLOAD_TITLE}>">
    <div class="container">
        <div class="page-header">
            <h1><{$smarty.const._SMALLWORLD_UPLOAD_TITLE}></h1>
        </div>
        <blockquote>
            <p><{$smarty.const._SMALLWORLD_UPLOAD_HOWTO}></p>
        </blockquote>
        <br>
        <!-- The file upload form used as target for the file upload widget -->
        <form id="fileupload" action="../imgupload.php" method="POST" enctype="multipart/form-data">
            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
            <div class="row fileupload-buttonbar">
                <div class="span7">
                    <!-- The fileinput-button span is used to style the file input field as button -->
                    <span class="btn btn-success fileinput-button">
                        <i class="icon-plus icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_ADDFILES}></span>
                        <input type="file" name="files[]" multiple>
                    </span>
                    <button type="submit" class="btn btn-primary start">
                        <i class="icon-upload icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_START}></span>
                    </button>
                    <button type="reset" class="btn btn-warning cancel">
                        <i class="icon-ban-circle icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_CANCEL}></span>
                    </button>
                    <button type="button" class="btn btn-danger delete">
                        <i class="icon-trash icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_DELETE}></span>
                    </button>
                    <input type="checkbox" class="toggle">
                </div>
                <!-- The global progress information -->
                <div class="span5 fileupload-progress fade">
                    <!-- The global progress bar -->
                    <div class="progress progress-success progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                        <div class="bar" style="width:0%;"></div>
                    </div>
                    <!-- The extended global progress information -->
                    <div class="progress-extended">&nbsp;</div>
                </div>
            </div>
            <!-- The loading indicator is shown during file processing -->
            <div class="fileupload-loading"></div>
            <br>
            <!-- The table listing the files available for upload/download -->
            <table role="presentation" class="table table-striped">
                <tbody class="files" data-toggle="modal-gallery" data-target="#modal-gallery"></tbody>
            </table>
        </form>
        <br>
        <div class="well">
            <h3><{$smarty.const._SMALLWORLD_IMAGES_DEMONOTES}></h3>
            <ul>
                <li><{$smarty.const._SMALLWORLD_IMAGES_INSTRUCTIONS}></li>
            </ul>
        </div>
    </div>
    <!-- modal-gallery is the modal dialog used for the image gallery -->
    <div id="modal-gallery" class="modal modal-gallery hide fade" data-filter=":odd" tabindex="-1">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">&times;</a>
            <h3 class="modal-title"></h3>
        </div>
        <div class="modal-body">
            <div class="modal-image"></div>
        </div>
        <div class="modal-footer">
            <a class="btn modal-download" target="_blank">
                <i class="icon-download"></i>
                <span><{$smarty.const._SMALLWORLD_IMAGES_DOWNLOAD}></span>
            </a>
            <a class="btn btn-success modal-play modal-slideshow" data-slideshow="5000">
                <i class="icon-play icon-white"></i>
                <span><{$smarty.const._SMALLWORLD_IMAGES_SLIDESHOW}></span>
            </a>
            <a class="btn btn-info modal-prev">
                <i class="icon-arrow-left icon-white"></i>
                <span><{$smarty.const._SMALLWORLD_IMAGES_PREVIOUS}></span>
            </a>
            <a class="btn btn-primary modal-next">
                <span><{$smarty.const._SMALLWORLD_IMAGES_NEXT}></span>
                <i class="icon-arrow-right icon-white"></i>
            </a>
        </div>
    </div>
    <!-- The template to display files available for upload -->
    <script id="template-upload" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-upload fade">
                <td class="preview"><span class="fade"></span></td>
                <td class="name"><span>{%=file.name%}</span></td>
                <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
                {% if (file.error) { %}
                    <td class="error" colspan="2"><span class="label label-important"><{$smarty.const._SMALLWORLD_ERROR}></span> {%=file.error%}</td>
                {% } else if (o.files.valid && !i) { %}
                    <td>
                        <div class="progress progress-success progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="bar" style="width:0%;"></div></div>
                    </td>
                    <td class="start">{% if (!o.options.autoUpload) { %}
                        <button class="btn btn-primary">
                            <i class="icon-upload icon-white"></i>
                            <span><{$smarty.const._SMALLWORLD_IMAGES_START}></span>
                        </button>
                    {% } %}</td>
                {% } else { %}
                    <td colspan="2"></td>
                {% } %}
                <td class="cancel">{% if (!i) { %}
                    <button class="btn btn-warning">
                        <i class="icon-ban-circle icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_CANCEL}></span>
                    </button>
                {% } %}</td>
            </tr>
        {% } %}

    </script>
    <!-- The template to display files available for download -->
    <script id="template-download" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-download fade">
                {% if (file.error) { %}
                    <td></td>
                    <td class="name"><span>{%=file.name%}</span></td>
                    <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
                    <td class="error" colspan="2"><span class="label label-important"><{$smarty.const._SMALLWORLD_ERROR}></span> {%=file.error%}</td>
                {% } else { %}
                    <td class="preview">{% if (file.thumbnails_url) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" data-gallery="gallery" download="{%=file.name%}"><img src="{%=file.thumbnails_url%}"></a>
                    {% } %}</td>
                    <td class="name">
                        <a href="{%=file.url%}" title="{%=file.name%}" data-gallery="{%=file.thumbnails_url&&'gallery'%}" download="{%=file.name%}">{%=file.name%}</a>
                    </td>
                    <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
                    <td colspan="2"></td>
                {% } %}
                <td class="delete">
                    <button class="btn btn-danger" data-type="{%=file.delete_type%}" data-url="{%=file.delete_url%}"{% if (file.delete_with_credentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                        <i class="icon-trash icon-white"></i>
                        <span><{$smarty.const._SMALLWORLD_IMAGES_DELETE}></span>
                    </button>
                    <input type="checkbox" name="delete" value="1">
                </td>
            </tr>
        {% } %}

    </script>
</div>
<{/if}>
<{/if}>    
