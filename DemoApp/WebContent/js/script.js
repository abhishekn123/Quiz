$(document).ready(function() {
$('.mdb-select').materialSelect();
});
$("#btn-one").click(function()
{
  $('#btn-one').html('<span class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...').addClass('disabled');
});
