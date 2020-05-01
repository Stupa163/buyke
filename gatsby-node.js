exports.createPages = async function({ actions, graphql }) {

  const products = await graphql(`
      query myQuery {
        allMarkdownRemark {
          edges {
            node {
              frontmatter {
                path
              }
            }
          }
        }
      }
  `)

  let i = 1;
  products.data.allMarkdownRemark.edges.forEach(edge => {
    const path = edge.node.frontmatter.path;
    actions.createPage({
        path: path,
        component: require.resolve('./src/templates/productTemplate.js'),
        context: {path: path, id: i}
      }
    )
    i++;
  })

}
