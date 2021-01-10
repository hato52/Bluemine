// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// var jQuery = require('jquery')
// global.$ = global.jQuery = jQuery;
// window.$ = window.jQuery = jQuery;



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("trix")
require("@rails/actiontext")

require("bootstrap")
require("@fortawesome/fontawesome-free")

import $ from 'jquery';

require("select2")                       // globally assign select2 fn to $ element
require("select2/dist/css/select2")     // select2 本体のCSSの読み込み
require("select2-bootstrap4-theme/dist/select2-bootstrap4")     // select2のBootstrapモデルのCSSを読み込み

$(document).on("turbolinks:load", () => {
    $('.js-select').select2({
        // ajax: true               // Ajax使うと検索結果が見つからないと言われる
    });
});