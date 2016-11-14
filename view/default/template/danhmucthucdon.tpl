


<div class="site-content">
    <div class="container">
        <div class="row">
            <main id="main" class="site-main col-sm-9 alignright product" role="main">
                <div class="wrapper-pagination-top">
                    <div class="shop-top">
                        <ul class="list-unstyled list-products-layout">
                            <li class="switchToGrid active"><span><i class="fa fa-th"></i></span></li>
                            <li class="switchToList"><span><i class="fa fa-list"></i></span></li>
                        </ul>
                        <form class="woocommerce-ordering" method="get">
                            <select name="orderby" class="orderby">
                                <option value="id" selected='selected'>Mới nhất</option>
                                <option value="name">Sắp xếp theo tên</option>
                                <option value="price">Sắp xếp theo giá</option>
                                <option value="start">Sắp xếp theo sao</option>
                                <option value="num_like">Sắp xếp theo lượt thích</option>
                            </select>
                        </form>
                    </div>
                    <div class="wrapper-pagination">
                        <div class="pagination loop-pagination">
                            <ul class='page-numbers'>
                               {PAGING}
                            </ul>
                        </div>
                    </div>


                </div>
                <ul class="product-grid category-product-list row archive_switch">
                    {danhsach}
                </ul>

                <div class="wrapper-pagination-footer">
                    <div class="wrapper-pagination">
                        <div class="pagination loop-pagination">
                            <ul class='page-numbers'>
                                {PAGING}
                            </ul>
                        </div>
                    </div>


                    <p class="woocommerce-result-count">
                       </p>
                </div>


            </main>


