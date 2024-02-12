<div class="toast" id="alert_toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-body text-white"></div>
</div>

<div class="modal fade" id="confirm_modal" role='dialog'>
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirmation</h5>
            </div>
            <div class="modal-body">
                <div id="delete_content"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id='confirm' onclick="">Continue</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="uni_modal" role='dialog'>
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id='submit' onclick="$('#uni_modal form').submit()">Save</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

<script>
    window.uni_modal = function($title = '', $url = '', $size = "") {
        $.ajax({
            url: $url,
            error: err => {
                console.log()
                alert("An error occured")
            },
            success: function(resp) {
                if (resp) {
                    $('#uni_modal .modal-title').html($title)
                    $('#uni_modal .modal-body').html(resp)
                    if ($size != '') {
                        $('#uni_modal .modal-dialog').addClass($size)
                    } else {
                        $('#uni_modal .modal-dialog').removeAttr("class").addClass("modal-dialog modal-md")
                    }
                    $('#uni_modal').modal('show')
                }
            }
        })
    }
    window._conf = function($msg = '', $func = '', $params = []) {
        $('#confirm_modal #confirm').attr('onclick', $func + "(" + $params.join(',') + ")")
        $('#confirm_modal .modal-body').html($msg)
        $('#confirm_modal').modal('show')
    }
    window.alert_toast = function($msg = 'TEST', $bg = 'success') {
        $('#alert_toast').removeClass('bg-success')
        $('#alert_toast').removeClass('bg-danger')
        $('#alert_toast').removeClass('bg-info')
        $('#alert_toast').removeClass('bg-warning')

        if ($bg == 'success')
            $('#alert_toast').addClass('bg-success')
        if ($bg == 'danger')
            $('#alert_toast').addClass('bg-danger')
        if ($bg == 'info')
            $('#alert_toast').addClass('bg-info')
        if ($bg == 'warning')
            $('#alert_toast').addClass('bg-warning')
        $('#alert_toast .toast-body').html($msg)
        $('#alert_toast').toast({
            delay: 3000
        }).toast('show');
    }
</script>