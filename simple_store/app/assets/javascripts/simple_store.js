$(document).ready(function() {
  $("a#featured-apparel-product").click(function() {
    var productId = $(this).attr("data_product_id");
    var productUrl = "api/v1/products/" + productId + ".json";
    $.get(productUrl, function(response) {
      $("div.luggage").hide();
      $("div.cutlery").hide();
      var featuredHTML = response.name + "<br />" + response.description;
      $("div.apparel-featured").append(featuredHTML);
      $("div.apparel-featured").show();
    });
  });
});