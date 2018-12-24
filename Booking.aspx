<%@ Page Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="HKUSportv3.Users" %>
<asp:Content ID="Content0" ContentPlaceHolderID="title" runat="server">
    <title>HKUSPOR | Kullanıcılar</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentHeaderHolder" runat="server">
    <h1>
        Randevular
        <small>Randevulara Göz Atın</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Navigasyon</a></li>
        <li><a href="#" class="active"><i class="fa fa-calendar"></i>Randevular</a></li>
      </ol>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentHolder" runat="server">
    <form runat="server">
<div class="col-md-12">
   <div class="box box-success">
      <div class="box-header">
         <h3 class="box-title">Randevu Yönetimi</h3>
         <a data-toggle="modal" data-target="#randevu-ekle" class="btn btn-flat btn-primary pull-right"><i class="fa fa-user-plus"></i></a>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
         <table class="datatable_LUDEVO display table table-bordered table-stripe nowrap">
            <thead>
               <tr>
                  <th style="width:10px">#</th>
                  <th>Ad Soyadı</th>
                  <th>Başlangıç Zamanı</th>
                  <th>Bitiş Zamanı</th>
                  <th>Hoca Adı</th>
                  <th>Aksiyonlar</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td database_id="1">1</td>
                  <td>Halil İbrahim Ceylan</td>
                  <td>01/01/1999 23:00</td>
                  <td>01/01/1999 00:00</td>
                  <td>Nihat Şimşek</td>
                  <td>
                     <center>
                        <a href="#" class="btn btn-small btn-default"><i class="fa fa-search-plus"></i></a>
                        <a href="#" class="btn btn-small btn-success" ><i class="fa fa-edit"></i></a>
                        <a href="#" class="btn btn-small btn-danger" data-toggle="modal" data-target="#kullanici-sil"><i class="fa fa-trash"></i></a>
                     </center>
                  </td>
               </tr>
           </tbody>
            <tfoot>
               <tr>
                  <th style="width:10px">#</th>
                  <th>Ad Soyadı</th>
                  <th>Başlangıç Zamanı</th>
                  <th>Bitiş Zamanı</th>
                  <th>Hoca Adı</th>
                  <th>Aksiyonlar</th>
               </tr>
            </tfoot>
         </table>
      </div>
      <!-- /.box-body -->
   </div>
   <!-- /.box -->
   <!-- /.box -->
</div>
<div style="display: none;" class="modal fade" id="randevu-ekle">
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span></button>
            <h4 class="modal-title">Randevu Ekle</h4>
         </div>
         <div class="modal-body">
			<div class="row">
                  <div class="col-md-12">
                      <div class="col-md-6">
                          <div class="form-group">
                        <label>Tarih</label>
                         <asp:TextBox ID="randevu_ekle_booked_start" runat="server" class="form-control"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Üye</label>
                         <asp:DropDownList ID="randevu_ekle_user_id" runat="server" CssClass="form-control">
                            <asp:ListItem Text="1" Value="">Kullanıcı 1</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Kullanıcı 2</asp:ListItem>
                         </asp:DropDownList>
                     </div>
					 
               
                          </div>
                      <div class="col-md-3">
                          <div class="bootstrap-timepicker">
                           <div class="form-group">
                        <label>Başlangıç Saati</label>
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control timepicker"></asp:TextBox>
                     </div>
                      </div>
                      </div>
                      <div class="col-md-3">
                           <div class="bootstrap-timepicker">
                           <div class="form-group">
                        <label>Bitiş Saati</label>
                         <asp:TextBox ID="randevu_ekle_booked_finish_time" runat="server" class="form-control timepicker"></asp:TextBox>
                     </div>
                      </div>
                          </div>
                      <div class="col-md-6">
                                           <div class="form-group">
                        <label>Hoca</label>
                         <asp:DropDownList ID="randevu_ekle_trainer_id" runat="server" CssClass="form-control">
                            <asp:ListItem Text="1" Value="">Hoca 1</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Hoca 2</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                          </div>
                      </div>
                </div>
         </div>
         
         <div class="modal-footer">
         <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>

         <button type="submit" class="btn btn-primary">Ekle</button>
         </div>
         
      </div>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>
<div style="display: none;" class="modal modal-danger fade" id="kullanici-sil">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span></button>
            <h4 class="modal-title">Kullanıcı Sil</h4>
         </div>
         <div class="modal-body">
               <input type="hidden" name="kullanici_sil_id">
               <h4> Bu İşlem Geri Alınamaz !</h4>
               <p>Kullanıcıya Ait Tüm Dosyalar Veritabanından ve Dosya Sisteminden <b> Kalıcı Bir Şekilde</b> Silinecektir.</p>
               <p> Aşağıdaki Kişiyi Silme İşlemini Onaylayınız. </p>
         </div>
           
         <div class="modal-footer">
         <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-outline">Sil</button>
         </div>
        
      </div>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>
    </form>
</asp:Content>




<asp:Content ID="Content3" ContentPlaceHolderID="cssHolder" runat="server">
    <!-- Select2 -->
  <link rel="stylesheet" href="./bower_components/select2/dist/css/select2.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="./bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="./bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="./plugins/timepicker/bootstrap-timepicker.min.css">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="javascriptLibraryHolder" runat="server">
<!-- Select2 -->
<script src="./bower_components/select2/dist/js/select2.full.min.js"></script>
 <!-- DataTables -->
<script src="./bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="./bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- bootstrap datepicker -->
<script src="./bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="./plugins/timepicker/bootstrap-timepicker.min.js"></script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="javascriptCodeHolder" runat="server">
    <!-- Firma Yönetim Javascript Functions -->
 <script>
$('.select2').select2()
$('.datatable_LUDEVO').DataTable( {
	"scrollX": true,
	"autoWidth": false,
	"language": {
    "decimal":        "",
    "emptyTable":     "Bu tablo için kullanılabilir veri yok.",
    "info":           "_TOTAL_ kayıttan _START_ ile _END_ arası kayıt gösteriliyor.",
    "infoEmpty":      "0 kayıttan 0 kayıt gösteriliyor.",
    "infoFiltered":   "(_MAX_ veriden filtrelendi.)",
    "infoPostFix":    "",
    "thousands":      ",",
    "lengthMenu":     "Her sayfada _MENU_ kayıt gösteriliyor.",
    "loadingRecords": "Yükleniyor...",
    "processing":     "İşleniyor...",
    "search":         "Arama:",
    "zeroRecords":    "Eşleşen kayıt bulunamadı.",
    "paginate": {
        "first":      "İlk",
        "last":       "Son",
        "next":       "Sonraki",
        "previous":   "Önceki"
    },
    "aria": {
        "sortAscending":  ": artana göre kolon sıralaması aktif edildi.",
        "sortDescending": ": azalana göre kolon sıralaması aktif edildi."
    }
}
} );
</script>
<script>
    $('#contentHolder_randevu_ekle_booked_start').datepicker({
        autoclose: true,
        language: "tr",
        format: "dd-mm-yyyy"
    })
    //Timepicker
    $('.timepicker').timepicker({
        showInputs: false,
        showMeridian: false
    })
</script>
</asp:Content>