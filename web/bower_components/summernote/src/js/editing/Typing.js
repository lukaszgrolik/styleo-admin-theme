define([
  'summernote/core/dom',
  'summernote/core/range'
], function (dom, range) {

  var Typing = function () {

    /**
     * @param {jQuery} $editable 
     * @param {WrappedRange} rng
     * @param {Number} tabsize
     */
    this.insertTab = function ($editable, rng, tabsize) {
      var tab = dom.createText(new Array(tabsize + 1).join(dom.NBSP_CHAR));
      rng = rng.deleteContents();
      rng.insertNode(tab, true);

      rng = range.create(tab, tabsize);
      rng.select();
    };

    /**
     * insert paragraph
     */
    this.insertParagraph = function () {
      var rng = range.create();

      // deleteContents on range.
      rng = rng.deleteContents();

      rng = rng.wrapBodyInlineWithPara();

      // find split root node: block level node
      var splitRoot = dom.ancestor(rng.sc, dom.isPara);
      var nextPara = dom.splitTree(splitRoot, rng.getStartPoint());

      var emptyAnchors = dom.listDescendant(splitRoot, dom.isEmptyAnchor);
      emptyAnchors = emptyAnchors.concat(dom.listDescendant(nextPara, dom.isEmptyAnchor));

      $.each(emptyAnchors, function (idx, anchor) {
        dom.remove(anchor);
      });

      range.create(nextPara, 0).normalize().select();
    };

  };

  return Typing;
});
