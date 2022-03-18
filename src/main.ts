import express from 'express';
import { graphqlHTTP } from 'express-graphql';
import { buildSchema } from 'graphql';

const PORT = 8080;
const HOST = '0.0.0.0';

const schema = buildSchema(`
    type Query {
        hello: String
    }
`);

const root = { hello: () => 'Hello world' };

const app = express();

app.use('/graphql', graphqlHTTP({
    schema,
    rootValue: root,
    graphiql: false,
}));

app.listen(PORT, HOST);