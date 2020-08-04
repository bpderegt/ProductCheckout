const index = require('../db/index.js');

const getProductData = (id, callback) => {
  index.getProduct(id, (err, product) => {
    if (err) {
      callback(err);
    }
    callback(null, product);
  });
};

const getStoreData = (id, zip, callback) => {
  index.getNearbyStores(id, zip, (err, stores) => {
    if (err) {
      callback(err);
    }
    callback(null, stores);
  });
};

const postProductData = (q, callback) => {

}

const deleteProductData = (id, callback) => {
}

module.exports = {
  getProductData,
  getStoreData,
  postProductData,
  deleteProductData
};
