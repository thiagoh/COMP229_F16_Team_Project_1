(function () {

    'use strict';

    $(function () {

        var updateFields = function () {

            var val = $('input.description:first').val();

            if ($.trim(val).length <= 0) {
                val = 'Team story';
            }

            $('#descriptionPreview').html(val);

            val = $('input.name:first').val();

            if ($.trim(val).length <= 0) {
                val = 'Team Name';
            }

            $('#namePreview').html(val);

            $('#logoPreview').attr('src', '');

            val = $('input.logoPath:first').val();

            if ($.trim(val).length <= 0) {
                val = '/Assets/img/img-placeholder-2.png';
            }

            $('#logoPreview').attr('src', val);
        }

        $('input.name:first').keyup(updateFields);
        $('input.description:first').keyup(updateFields);
        $('input.logoPath:first').keyup(updateFields);

        updateFields();
    });
}());