(function () {

    'use strict';

    $(function () {

        console.log('loaded');
        $('#preview').hide();

        $('input.description:first').keyup(function () {
            console.log('desc');

            $('#descriptionPreview').html($('input.description:first').val());
        });

        $('input.name:first').keyup(function () {
            console.log('name');

            var val = $('input.name:first').val();

            $('#namePreview').html(val);

            if ($.trim(val).length > 0) {
                $('#preview').show();
            } else {
                $('#preview').hide();
            }
        });

        $('input.logoPath:first').keyup(function () {

            $('#logoPreview').attr('src', '');

            var val = $('input.logoPath:first').val();

            if ($.trim(val).length > 0) {
                $('#logoPreview').attr('src', val);
            }
        });
    });
}());