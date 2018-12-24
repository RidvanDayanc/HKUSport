<%@ Page Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="HKUSportv3.Users" %>
<asp:Content ID="Content0" ContentPlaceHolderID="title" runat="server">
    <title>HKUSPOR | Kullanıcılar</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentHeaderHolder" runat="server">
    <h1>
        Kullanıcılar
        <small>Kullanıcılara Göz Atın</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Navigasyon</a></li>
        <li><a href="#" class="active"><i class="fa fa-users"></i>Kullanıcılar</a></li>
      </ol>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentHolder" runat="server">
    <form runat="server">
<div class="col-md-12">
   <div class="box box-success">
      <div class="box-header">
         <h3 class="box-title">Kullanıcı Yönetimi</h3>
         <a data-toggle="modal" data-target="#kullanici-ekle" class="btn btn-flat btn-primary pull-right"><i class="fa fa-user-plus"></i></a>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
         <table class="datatable_LUDEVO display table table-bordered table-stripe nowrap">
            <thead>
               <tr>
                  <th style="width:10px">#</th>
                  <th>Ad Soyad</th>
                  <th>Kullanıcı Adı</th>
                  <th>Rol</th>
                  <th>TC</th>
                  <th>Aksiyonlar</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>1</td>
                  <td>Halil İbrahim Ceylan</td>
                  <td>hibrahim.ceylan</td>
                  <td database_id="1">Yetki 1</td>
                  <td>00000000000</td>
                  <td>
                     <center>
                        <a href="Users_Show.aspx?user_id=0" class="btn btn-small btn-default"><i class="fa fa-search-plus"></i></a>
                        <a href="Users_Edit.aspx?user_id=0" class="btn btn-small btn-success" ><i class="fa fa-edit"></i></a>
                        <a href="#" class="btn btn-small btn-danger" data-toggle="modal" data-target="#kullanici-sil"><i class="fa fa-trash"></i></a>
                     </center>
                  </td>
               </tr>
           </tbody>
            <tfoot>
               <tr>
                  <th style="width:10px">#</th>
                  <th>Ad Soyad</th>
                  <th>Kullanıcı Adı</th>
                  <th>Rol</th>
                  <th>TC</th>
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
<div style="display: none;" class="modal fade" id="kullanici-ekle">
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span></button>
            <h4 class="modal-title">Kullanıcı Ekle</h4>
         </div>
         <div class="modal-body">
			<div class="row">
                  <div class="col-md-12">
                      <div class="col-md-6">
                     <div class="form-group">
                        <label>Ad Soyad</label>
                       <asp:TextBox class="form-control" ID="kullanici_ekle_isim" runat="server"></asp:TextBox>
                     </div>
					 <div class="form-group">
                        <label>Yetki</label>
                         <asp:DropDownList ID="kullanici_ekle_role_id" runat="server" class="form-control">
                            <asp:ListItem Text="1" Value="">Yetki 1</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Yetki 2</asp:ListItem>
                            <asp:ListItem Text="3" Value="">Yetki 3</asp:ListItem>
                        </asp:DropDownList>
                     </div>
					  <div class="form-group">
                        <label>Telefon 1</label>
                       <asp:TextBox type="text" class="form-control datatype_phone" ID="kullanici_ekle_phone1" runat="server" TextMode="Number"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>E-Mail</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_email" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Doğum Tarihi</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_bday" runat="server"></asp:TextBox>
                     </div>
                          </div>
                      <div class="col-md-6">
                          <div class="form-group">
                        <label>T.C. No</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_TC" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "kullanici_ekle_TC" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{11,11}$" runat="server" ErrorMessage="Tc 11 Karakter Olmalıdır."></asp:RegularExpressionValidator>
                     </div>
                          <div class="form-group">
                        <label>Cinsiyet</label>
                       <asp:DropDownList ID="kullanici_ekle_gender" runat="server" class="form-control">
                            <asp:ListItem Text="1" Value="">Erkek</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Kadın</asp:ListItem>
                        </asp:DropDownList>
                     </div>
                     <div class="form-group">
                        <label>Telefon 2</label>
                        <asp:TextBox type="text" class="form-control datatype_phone" ID="kullanici_ekle_phone2" runat="server" TextMode="Number"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Adres</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_adress" runat="server" TextMode="MultiLine" Height="110px"></asp:TextBox>
                     </div>
                  </div>
                      </div>
                <div class="col-md-12">
                  <div class="col-md-6">
                     <label>Kullanıcı Adı</label>
                     <div class="form-group input-group input-group-sm has-success">
                        <span class="input-group-addon">
                        <i class="fa fa-user"></i></span>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_username" onchange="kullanici_adi('0','kullanici_ekle_kullanici')" runat="server"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <label>Parola</label>
                     <div class="form-group input-group input-group-sm">
                        <span class="input-group-addon">
                        <i class="fa fa-lock"></i></span>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_parola" runat="server"></asp:TextBox>
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-info btn-flat" onclick ="$('[name=kullanici_ekle_parola]').val(Math.random().toString(36).slice(-8))" runat="server"><i class="fa fa-refresh"></i></button>
                        </span>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="javascriptLibraryHolder" runat="server">
    <!-- Select2 -->
<script src="./bower_components/select2/dist/js/select2.full.min.js"></script>
 <!-- DataTables -->
<script src="./bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="./bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- bootstrap datepicker -->
<script src="./bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
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
    $('#contentHolder_kullanici_ekle_bday').datepicker({
        autoclose: true,
        language: "tr",
        format: "dd-mm-yyyy",
        defaultViewDate: {
            month: '01',
            day:   '01',
            year: '1990'
        }
    })
</script>
</asp:Content>