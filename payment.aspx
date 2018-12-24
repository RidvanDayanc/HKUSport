<%@ Page Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="HKUSportv3.Users" %>

<asp:Content ID="Content0" ContentPlaceHolderID="title" runat="server">
    <title>HKUSPOR | Ödemeler</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentHeaderHolder" runat="server">
    <h1>Ödemeler
        <small>Ödemelere Göz Atın</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#">Navigasyon</a></li>
        <li><a href="#" class="active"><i class="fa fa-users"></i>Satışlar</a></li>
    </ol>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentHolder" runat="server">
    <form runat="server">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">Ödeme Yönetimi</h3>
                    <a data-toggle="modal" data-target="#kullanici-ekle" class="btn btn-flat btn-primary pull-right"><i class="fa fa-user-plus"></i></a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table class="datatable_LUDEVO display table table-bordered table-stripe nowrap">
                        <thead>
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>Ad Soyad</th>
                                <th>Sporlar</th>
                                <th>Uyelik Bitiş Tarihi</th>
                                <th>Tutar</th>
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
                                <th style="width: 10px">#</th>
                                <th>Ad Soyad</th>
                                <th>Sporlar</th>
                                <th>Uyelik Bitiş Tarihi</th>
                                <th>Tutar</th>
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
                        <h4 class="modal-title">Ödeme Ekle</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Üye Ad Soyad</label>
                                        <asp:DropDownList ID="Odeme" runat="server" class="form-control">
                                            <asp:ListItem Text="1" Value="">isim 1 </asp:ListItem>
                                            <asp:ListItem Text="2" Value="">isim 2</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Ödeme Tutarı</label>
                                        <asp:TextBox type="text" class="form-control datatype_phone" ID="odeme_ekle_ucret" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Indirim Miktarı</label>
                                        <asp:TextBox type="text" class="form-control" ID="Indirim_tutarı" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Giriş Tarihi</label>
                                        <asp:TextBox type="text" class="form-control" ID="odeme_gday" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Çıkış Tarihi</label>
                                        <asp:TextBox type="text" class="form-control" ID="odeme_cday" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Ödeme Şekli</label>
                                        <asp:DropDownList ID="odemesekli" runat="server" class="form-control">
                                            <asp:ListItem Text="1" Value="">kredi</asp:ListItem>
                                            <asp:ListItem Text="2" Value="">nakit</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Odeme Kaynagı</label>
                                        <asp:DropDownList ID="odemekaynagi" runat="server" class="form-control">
                                            <asp:ListItem Text="1" Value="">Erkek</asp:ListItem>
                                            <asp:ListItem Text="2" Value="">Kadın</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                                                        <div class="form-group">
                                        <label>Adres</label>
                                        <asp:TextBox type="text" class="form-control" ID="kullanici_ekle_adress" runat="server" TextMode="MultiLine" Height="180px"></asp:TextBox>
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
                        <h4>Bu İşlem Geri Alınamaz !</h4>
                        <p>Kullanıcıya Ait Tüm Dosyalar Veritabanından ve Dosya Sisteminden <b>Kalıcı Bir Şekilde</b> Silinecektir.</p>
                        <p>Aşağıdaki Kişiyi Silme İşlemini Onaylayınız. </p>
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
        $('.datatable_LUDEVO').DataTable({
            "scrollX": true,
            "autoWidth": false,
            "language": {
                "decimal": "",
                "emptyTable": "Bu tablo için kullanılabilir veri yok.",
                "info": "_TOTAL_ kayıttan _START_ ile _END_ arası kayıt gösteriliyor.",
                "infoEmpty": "0 kayıttan 0 kayıt gösteriliyor.",
                "infoFiltered": "(_MAX_ veriden filtrelendi.)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Her sayfada _MENU_ kayıt gösteriliyor.",
                "loadingRecords": "Yükleniyor...",
                "processing": "İşleniyor...",
                "search": "Arama:",
                "zeroRecords": "Eşleşen kayıt bulunamadı.",
                "paginate": {
                    "first": "İlk",
                    "last": "Son",
                    "next": "Sonraki",
                    "previous": "Önceki"
                },
                "aria": {
                    "sortAscending": ": artana göre kolon sıralaması aktif edildi.",
                    "sortDescending": ": azalana göre kolon sıralaması aktif edildi."
                }
            }
        });
</script>
    <script>
        $('#contentHolder_odeme_gday').datepicker({
            autoclose: true,
            language: "tr",
            format: "dd-mm-yyyy",
        })
        $('#contentHolder_odeme_cday').datepicker({
            autoclose: true,
            language: "tr",
            format: "dd-mm-yyyy",
        })
    </script>
</asp:Content>
