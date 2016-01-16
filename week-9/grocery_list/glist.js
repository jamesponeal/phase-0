

$(document).ready(function(){
  $('#add-button').click(function(){
    var itemToAdd = $('input[name=itemToAdd]').val();
    var qtyToAdd = $('input[name=qtyToAdd').val();
    $('#table_body').append('<tr><td>'+itemToAdd+'</td><td class="qtyData">'+qtyToAdd+'</td></tr>');
  });
});





