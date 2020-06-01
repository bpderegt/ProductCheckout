const { getProduct, getNearbyStores } = require('../db/index.js');

const getProductData = (id, callback) => {
  getProduct(id, (err, product) => {
    if (err) {
      callback(err);
    }
    callback(null, product);
  });
};

const getStoreData = (id, zip, callback) => {
  getNearbyStores(id, zip, (err, stores) => {
    if (err) {
      callback(err);
    }
    callback(null, stores);
  });
};

const postProductData = (q, callback) => {
  let product = stringQ(q);
  const query = `INSERT INTO products (productName, price, reviewCount, rating, themeName, themeImageUrl, featured, chokingHazard, productLimit, productImageUrl, productAvailabilityOnline) VALUES (${product})`;
  connection.query(query, (err, results) => {
    if (err) {
      callback(err)
    }
    callback(null, results);
  })
}

const putProductData = (q, id, callback) => {
  let product = stringQ(q);
  const query = `REPLACE INTO products VALUES (${id}, ${product})`;

  connection.query(query, (err, results) => {
    if (err) {
      callback(err)
    }
    callback(null, results);
  })
}

const deleteProductData = (id, callback) => {
  console.log('delete')
}

const stringQ = (q) => {
  let str = '';
  for (let key in q) {
    str += `"${q[key]}", `;
  }
  return str.substring(0, str.length - 2);
}

module.exports = {
  getProductData,
  getStoreData,
  postProductData,
  putProductData,
  deleteProductData
};
