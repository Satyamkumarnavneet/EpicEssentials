<div class="container">

    <div class="row">


        <!-- Would be to display sidebar -->
        <div class="col-md-3">
            <%@include file="share/sidebar.jsp" %>

        </div>

        <!-- to display the actual products -->
        <div class="col-md-9">

            <!-- Added breadcrumb component -->
            <div class="row">

                <div class="col-lg-12">
                    <c:if test="${userClickAllProducts == true}">
                        <script>
                            window.categoryId = '';
                        </script>

                        <ol class="breadcrumb">
                            <li><a href="/home">Home</a></li>
                            <li class="active"><span>All Products</span></li>
                        </ol>


                    </c:if>

                    <c:if test="${userClickCategoryProducts == true}">
                        <script>
                            window.categoryId = '${category.id}';
                        </script>
                        <ol class="breadcrumb">
                            <li><a href="/home">Home</a></li>
                            <li class="active"><a href="#">Category</a></li>
                            <li class="active"><span>${category.name }</span></li>

                        </ol>
                    </c:if>
                </div>
            </div>


            <div class="row">

                <div class="col-xs-12">
                    <div class="container-fluid">
                        <div class="table-responsive">


                            <table id="productListTable"
                                   class="table table-striped table-borderd">


                                <thead>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Brand</th>
                                    <th>Price</th>
                                    <th>Qty. Available</th>
                                    <th></th>
                                </tr>
                                </thead>


                                <tfoot>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Brand</th>
                                    <th>Price</th>
                                    <th>Qty. Available</th>
                                    <th></th>
                                </tr>
                                </tfoot>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
