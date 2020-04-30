import React from "react"
import { graphql } from "gatsby"

import Product from "../components/product"

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
                    }
                }
            }
        }
    }
`

const Products = ({ data }) => {
  return (
    <div>
      {
        data.allMarkdownRemark.edges.map((product) => {
          return <Product details={product.node.frontmatter} />
        })
      }
    </div>
  )
}

Products.propTypes = {}

export default Products
