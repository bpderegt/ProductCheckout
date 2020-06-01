/* eslint-disable no-console */
const { getProductData,
  getStoreData,
  postProductData,
  putProductData,
  deleteProductData,
} = require('./model.js');

const getProduct = (id, callback) => {
  getProductData(id, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const getStores = (id, zip, callback) => {
  getStoreData(id, zip, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const postProduct = (q, callback) => {
  postProductData(q, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  })
}

const putProduct = (q, id, callback) => {
  putProduct(q, id, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  })
}

const deleteProduct = (id, callback) => {
  console.log('delete')
}

module.exports = {
  getProduct,
  getStores,
  postProduct,
  putProduct,
  deleteProduct,
};
