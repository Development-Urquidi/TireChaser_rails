$( document ).on('turbolinks:load', function() {
    default_page = 'rate';
    setList(default_page);

    $('#quality_select').change(function(){
        list = $(this).val();
        setList(list);
    });

    function setList(selection){
        url = $(location).attr('href').split("/").splice(0, 4).join("/");
        uri = '/order_' + selection;
        address = url + uri;
        $('#list').load(address);
    }
});
