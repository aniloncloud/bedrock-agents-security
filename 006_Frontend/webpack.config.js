// const path = require('path');
// const HtmlWebpackPlugin = require('html-webpack-plugin');
// const Dotenv = require('dotenv-webpack');

// module.exports = {
//   entry: './src/App.js',
//   output: {
//     path: path.join(__dirname, '/dist'),
//     filename: 'bundle.js',
//   },
//   devServer: {
//     port: 3000,
//   },
//   module: {
//     rules: [
//       {
//         test: /\.(js|jsx)$/,
//         exclude: /node_modules/,
//         use: {
//           loader: 'babel-loader',
//         },
//       },
//       {
//         test: /\.css$/,
//         use: ['style-loader', 'css-loader'],
//       },
//     ],
//   },
//   resolve: {
//     fallback: {
//       "path": require.resolve("path-browserify")
//     }
//   },  
//   plugins: [
//     new Dotenv(),
//   ]
// };