const Hapi = require('hapi');
const {graphqlHapi} = require('graphql-server-hapi');

const server = new Hapi.Server();

server.connection({
    host: '0.0.0.0',
    port: 8080
});

server.register({
    register: graphqlHapi,
    options: {
        graphqlOptions: {
            schema: {}
        },
        path: '/api'
    }
});

server.start((err) => {

    if (err) {
        throw err;
    }
    console.log('Server running at:', server.info.uri);
});
