<%@ page import="com.example.ilprojetfinale.model.produit" %><%--
  Created by IntelliJ IDEA.
  User: azizg
  Date: 06/12/2021
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="account/account.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
  <!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<script src="acceuille/js/scripts.js"></script>

</head>
<body>
<jsp:include page="navbar.jsp"/>
<br>
<br>
<br>
<br>


<div class="container">
    <div class="main-body">

        <!-- Breadcrumb -->

        <!-- /Breadcrumb -->
        <%   produit p= (produit) request.getAttribute("p");%>

        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                            <div class="mt-3">
                                <h4><%= p.getProduit()%></h4>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=p.getProduit()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Produit</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=p.getPrix()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Description</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=p.getDescription()%>
                            </div>
                        </div>


                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Type</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=p.getType()%>
                            </div>
                        </div>
                        <hr>
                        <form action="editaccount" method="post">
                            <br>
                            <div class="row" style="width: 150px;display: inline-block;">
                                <div class="container-login100-form-btn">
                                    <div class="wrap-login100-form-btn">
                                        <div class="login100-form-bgbtn"></div>
                                        <a style="text-decoration: none;" class="login100-form-btn" href="editproduit?id=<%=p.getId()%>&ut=<%=request.getAttribute("ut")%>"> Edit</a>
                                        <!-- Button trigger modal -->



                                    </div>
                                </div>
                            </div>


                            <div class="row" style="width: 150px; display: inline-block;">
                                <div class="container-login100-form-btn">
                                    <div class="wrap-login100-form-btn">
                                        <div class="login100-form-bgbtn"></div>

                                        <button type="button" class="login100-form-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                            Delete
                                        </button>


                                        <!-- Modal -->




                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>





            </div>
        </div>

    </div>
</div>
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">delete item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
             Are you shure you want to delete this item
            </div>
            <div class="modal-footer">

                <div class="row" style="width: 150px; display: inline-block;">
                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="button" class="login100-form-btn" data-bs-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>




                <div class="row" style="width: 150px; display: inline-block;">
                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <a style="text-decoration: none;" class="login100-form-btn" href="delete?id=<%=p.getId()%>&ut=<%=request.getAttribute("ut")%>" > Delete</a>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>
</div>
<br>

<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<jsp:include page="footer.jsp"/>
</body>
</html>
