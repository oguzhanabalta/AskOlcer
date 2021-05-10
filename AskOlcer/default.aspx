<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AskOlcer._default" %>

<!DOCTYPE html>
<html>
<head>
    <title>ASKO ÖLÇER</title>
    <link rel="icon" href="images/heart.png" type="image/x-icon" />
     <!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- fontawesome css -->
    <!-- Latest compiled and minified CSS -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- google fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <!-- //google fonts -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)), url('https://i.hizliresim.com/bqo9fnm.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            width: 100%;
            height: 100vh;
            position: relative;
        }

        header {
            width: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>

    <header>

        <div class="card w-50 m-auto text-center ">
            <div class="card-header bg-danger text-white">AŞK-ÖLÇER</div>
            <div class="card-body">
                <form class="form-group" runat="server">
                    <div class="form-group">
                        <asp:TextBox class="form-control text-center" placeholder="SENİN ADIN" ID="name" runat="server"></asp:TextBox>
                    </div>
                    <div class="pl-4 pr-4">
                        <span>
                            <img alt="" src="images/heart.png" height="30" width="30" />
                        </span>
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:TextBox class="form-control text-center" placeholder="ASKO'NUN ADI" ID="lname" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button1" class="btn btn-success w-50" OnClientClick="kontrol()" OnClick="Button1_Click" runat="server" Text="AŞKINIZI TEST ET" />
                    </div>
                    <div>
                        <asp:TextBox ID="lovevalue" placeholder="AŞK YÜZDESİ" class="form-control text-center w-25 m-auto" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <div class="form-group">
                            <asp:Button ID="Button2" class="btn btn-danger w-50" OnClick="Button2_Click" runat="server" Text="Yorumumuzu oku" />
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button3" class="btn btn-primary w-50" OnClick="Button3_Click" runat="server" Text="Temizle" />
                        </div>
                    </asp:Panel>
                    <div class="footer-grid">
                        <div class="social text-center">
                            <ul class="d-flex justify-content-center">
                                <li class="mx-2"><a href="https://lnkload.com/2uVZV" target="_blank"><span class="fa fa-instagram"></span></a></li>
                                <li class="mx-2"><a href="https://lnkload.com/2uW09"  target="_blank"><span class="fa fa-twitter" ></span></a></li>
                                <li class="mx-2"><a href="https://lnkload.com/2uW0a"  target="_blank"><span class="fa fa-linkedin"></span></a></li>
                               
                            </ul>
                        </div>
                    </div>

                </form>



            </div>
            <div class="card-footer ">
                <asp:Label ID="Label1" CssClass="col-form-label" ForeColor="Red" runat="server" Text=""></asp:Label>
            </div>

        </div>

    </header>


    <script>
        function kontrol() {

            var name = document.getElementById('name').value;
            var lname = document.getElementById('lname').value;

            if (name == "") {
                alert('Lütfen isim giriniz');
            } else if (name.length <= 2) {
                alert('Minimum 3 harf girmelisiniz');
            } else if (!isNaN(name)) {
                alert('Rakam girmenize izin verilmez');
            }

            else if (lname == "") {
                alert('Lütfen askonun adını gir');
            } else if (lname.length <= 2) {
                alert('Minimum 3 harf girmelisiniz');
            } else if (!isNaN(lname)) {
                alert('Rakam girmenize izin verilmez');
            }
            else {
                var lovdata = Math.random() * 100;
                lovdata = Math.floor(lovdata);
                document.getElementById('lovevalue').value = lovdata;
            }

        }





    </script>
</body>

</html>
