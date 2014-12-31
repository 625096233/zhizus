<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- BEGIN FOOTER -->
<div class="footer padding-top-15">
  <div class="container">
    <div class="row">
      <!-- BEGIN COPYRIGHT -->
      <div class="col-md-6 col-sm-6 padding-top-10">
        2014 © Metronic Shop UI. ALL Rights Reserved.
      </div>
      <!-- END COPYRIGHT -->
      <!-- BEGIN PAYMENTS -->
      <div class="col-md-6 col-sm-6">
        <ul class="list-unstyled list-inline pull-right margin-bottom-15">
          <li><img src="assets/i/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
          <li><img src="assets/i/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
          <li><img src="assets/i/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
          <li><img src="assets/i/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
          <li><img src="assets/i/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
        </ul>
      </div>
      <!-- END PAYMENTS -->
    </div>
  </div>
</div>
<!-- END FOOTER -->

<!-- BEGIN fast view of a product -->
<div id="product-pop-up" style="display: none; width: 700px;">
  <div class="product-page product-pop-up">
    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-3">
        <div class="product-main-image">
          <img src="assets/temp/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
        </div>
        <div class="product-other-images">
          <a href="#" class="active"><img alt="Berry Lace Dress" src="assets/temp/products/model3.jpg"></a>
          <a href="#"><img alt="Berry Lace Dress" src="assets/temp/products/model4.jpg"></a>
          <a href="#"><img alt="Berry Lace Dress" src="assets/temp/products/model5.jpg"></a>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-9">
        <h1>Cool green dress with red bell</h1>
        <div class="price-availability-block clearfix">
          <div class="price">
            <strong><span>$</span>47.00</strong>
            <em>$<span>62.00</span></em>
          </div>
          <div class="availability">
            Availability: <strong>In Stock</strong>
          </div>
        </div>
        <div class="description">
          <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat
            Nostrud duis molestie at dolore.</p>
        </div>
        <div class="product-page-options">
          <div class="pull-left">
            <label class="control-label">Size:</label>
            <select class="form-control input-sm">
              <option>L</option>
              <option>M</option>
              <option>XL</option>
            </select>
          </div>
          <div class="pull-left">
            <label class="control-label">Color:</label>
            <select class="form-control input-sm">
              <option>Red</option>
              <option>Blue</option>
              <option>Black</option>
            </select>
          </div>
        </div>
        <div class="product-page-cart">
          <div class="product-quantity">
            <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
          </div>
          <button class="btn btn-primary" type="submit">Add to cart</button>
          <button class="btn btn-default" type="submit">More details</button>
        </div>
      </div>

      <div class="sticker sticker-sale"></div>
    </div>
  </div>
</div>
