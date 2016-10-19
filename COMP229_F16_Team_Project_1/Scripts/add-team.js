(function () {

    'use strict';

    $(function () {

        $('input.description:first').keyup(function () {

            var val = $('input.description:first').val();

            if ($.trim(val).length <= 0) {
                val = 'Team story';
            }

            $('#descriptionPreview').html(val);
        });

        $('input.name:first').keyup(function () {

            var val = $('input.name:first').val();

            if ($.trim(val).length <= 0) {
                val = 'Team Name';
            }

            $('#namePreview').html(val);
        });

        $('input.logoPath:first').keyup(function () {

            $('#logoPreview').attr('src', '');

            var val = $('input.logoPath:first').val();

            if ($.trim(val).length <= 0) {
                val = '/Assets/img/img-placeholder-2.png';
            }

            $('#logoPreview').attr('src', val);
        });
    });
}());