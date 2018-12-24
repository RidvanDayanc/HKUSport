<%@ Page Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Users_Show.aspx.cs" Inherits="HKUSportv3.Users" %>
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
         <h3 class="box-title">Kullanıcıyı Görüntüle : Kullanıcı ismi</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
                            <div class="col-md-12">
                      <div class="col-md-6">
                     <div class="form-group">
                        <label>Ad Soyad</label>
                       <asp:TextBox class="form-control" ID="kullanici_goruntule_name" runat="server"  ReadOnly="True"></asp:TextBox>
                     </div>
					 <div class="form-group">
                        <label>Yetki</label>
                        <asp:DropDownList ID="kullanici_goruntule_role_id" runat="server" class="form-control">
                            <asp:ListItem Text="1" Value="">Yetki 1</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Yetki 2</asp:ListItem>
                            <asp:ListItem Text="3" Value="">Yetki 3</asp:ListItem>
                        </asp:DropDownList>
                     </div>
					  <div class="form-group">
                        <label>Telefon 1</label>
                       <asp:TextBox type="text" class="form-control datatype_phone" ID="kullanici_goruntule_phone1" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>E-Mail</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_goruntule_email" runat="server"  ReadOnly="True"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Doğum Tarihi</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_goruntule_bday" runat="server"  ReadOnly="True"></asp:TextBox>
                     </div>
                          </div>
                      <div class="col-md-6">
                          <div class="form-group">
                        <label>T.C. No</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_goruntule_TC" runat="server"  ReadOnly="True"></asp:TextBox>
                     </div>
                          <div class="form-group">
                        <label>Cinsiyet</label>
                       <asp:DropDownList ID="kullanici_goruntule_gender" runat="server" class="form-control">
                            <asp:ListItem Text="1" Value="">Erkek</asp:ListItem>
                            <asp:ListItem Text="2" Value="">Kadın</asp:ListItem>
                        </asp:DropDownList>
                     </div>
                     <div class="form-group">
                        <label>Telefon 2</label>
                        <asp:TextBox type="text" class="form-control datatype_phone" ID="kullanici_goruntule_phone2" runat="server" TextMode="Number"  ReadOnly="True"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Adres</label>
                        <asp:TextBox type="text" class="form-control" ID="kullanici_goruntule_adress" runat="server" TextMode="MultiLine" Height="110px"  ReadOnly="True"></asp:TextBox>
                     </div>
                  </div>
                      </div>

      </div>
      <!-- /.box-body -->
       <div class="box-footer">
           <a class="btn btn-flat btn-info" href="Users.aspx">Geri</a>
       </div>
   </div>
   <!-- /.box -->
   <!-- /.box -->
</div>
     </form>
</asp:Content>




<asp:Content ID="Content3" ContentPlaceHolderID="cssHolder" runat="server">
  <!-- Select2 -->
  <link rel="stylesheet" href="../bower_components/select2/dist/css/select2.min.css">
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