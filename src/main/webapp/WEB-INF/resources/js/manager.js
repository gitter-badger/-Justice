/**
 * Created by dima on 4/28/15.
 */

//hide button
$(document).ready(function() {
    $(".product-table").hide();
    $(".order-table").hide();
    $(".dish-content").hide();


    $(".hideBtnProduct").click(function (){
        $(".second-content").hide();
        $(".dish-content").hide();;
        $(".product-table").slideToggle();
    });

    $(".hideBtnDish").click(function(){
        $(".product-table").hide();
        $(".dish-content").hide();
        $(".second-content").slideToggle();
    });

    $(".hideBtnOrder").click(function(){
        $(".product-table").hide();
        $(".second-content").hide();
        $(".dish-content").slideToggle();
    });
});

//Filter
$(document).ready(function(){
    $("#search").change(function(){
        var search = $("#search").val();
        $('.dish-table .dish:contains('+ search +')').show();
        $('.dish-table .dish:not(:contains('+ search +'))').hide();
        $('.order-table .order:contains('+ search +')').show();
        $('.order-table .order:not(:contains('+ search +'))').hide();
        $('.product-table .product:contains('+ search +')').show();
        $('.product-table .product:not(:contains('+ search +'))').hide();
    });
});

//pagination
$(document).ready(function(){

    $('table.paginated').each(function() {
        var currentPage = 0;
        var numPerPage = 8;
        var $table = $(this);
        $table.bind('repaginate', function() {
            $table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
        });
        $table.trigger('repaginate');
        var numRows = $table.find('tbody tr').length;
        console.log(numRows);
        var numPages = Math.ceil(numRows / numPerPage);
        var $pager = $('<div class="pager"></div>');
        for (var page = 0; page < numPages; page++) {
            $('<span class="page-number"></span>').text(page + 1).bind('click', {
                newPage: page
            }, function(event) {
                currentPage = event.data['newPage'];
                $table.trigger('repaginate');
                $(this).addClass('active').siblings().removeClass('active');
            }).appendTo($pager).addClass('clickable');
        }
        $pager.insertAfter($table).find('span.page-number:first').addClass('active');
    });
});


