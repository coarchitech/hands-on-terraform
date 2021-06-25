module.exports = async function (context, req) {
  context.log('JavaScript HTTP trigger function processed a request.');
  const responseMessage =  "Hello Coarchitech Community from azure"
      
  context.res = {
      // status: 200, /* Defaults to 200 */
      body: responseMessage,
      headers: { 'Access-Control-Allow-Origin': '*', 'Access-Control-Allow-Methods': 'GET, POST'}           
      
  };

}