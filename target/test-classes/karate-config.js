function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
	petStoreUrl: 'https://petstore.swagger.io/v2/pet'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
	  petStoreUrl: 'https://petstore.swagger.io/v2/pet'  
  } else if (env == 'pre-prod') {
    // customize
	  
  } else if (env == 'prod') {
	  
	  petStoreUrl: 'https://petstore.swagger.io/v2/pet'
		// customize  
  }
  return config;
}