$(document).ready(function() {
  jQuery('input.hasDatetimePicker').datetimepicker({
    dateFormat: "dd/mm/yy",
    beforeShow: function () {
      setTimeout(
        function () {
          $('#ui-datepicker-div').css("z-index", "3000");
        }, 100
      );
    }
  });
});

//=require jquery-ui
//=require jquery-ui-timepicker-addon
//=require just_datetime_picker/nested_form_workaround