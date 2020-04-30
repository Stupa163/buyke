import React from "react"
import { graphql, Link } from "gatsby"

import Product from "../components/product"
import Layout from "../components/layout"
import { Row } from "react-bootstrap"
import ListGroup from "react-bootstrap/ListGroup"

export const query = graphql`
    query MyQuery {
        allMarkdownRemark {
            edges {
                node {
                    frontmatter {
                        description
                        image
                        price
                        title
                        path
                    }
                }
            }
        }
    }
`

const Products = ({ data }) => {
  return (
    <Layout>
      <div className={"products"}>
        <ListGroup horizontal>
          <ListGroup.Item><Link to={"/"}>Accueil</Link> </ListGroup.Item>
          <ListGroup.Item><Link to={"/products"}>Produits</Link></ListGroup.Item>
        </ListGroup>
        <Row>
          {
            data.allMarkdownRemark.edges.map((product) => {
              return <Product details={product.node.frontmatter}/>
            })
          }
        </Row>

      </div>
    </Layout>
  )
}

Products.propTypes = {}

export default Products
