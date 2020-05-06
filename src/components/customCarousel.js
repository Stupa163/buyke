import React from "react"
import { graphql } from "gatsby"
import { StaticQuery } from "gatsby"
import Carousel from "react-bootstrap/Carousel"
import Product from "./product"
import { Row } from "react-bootstrap"

const CustomCarousel = () => (
  <StaticQuery
    query={
      graphql`
        query MyQueryCarousel {
            allMarkdownRemark(limit: 3) {
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
    }
    render={data => (
      <div className={"carousel"}>
        <Carousel>
          {
            data.allMarkdownRemark.edges.map((product) => {
              return (
                <Carousel.Item>
                  <Carousel.Caption>
                    <h3>{product.node.frontmatter.title}</h3>
                  </Carousel.Caption>

                  <img src={product.node.frontmatter.image} className="d-block w-100" alt=""/>
                </Carousel.Item>

              )
            })
          }

        </Carousel>

      </div>
    )}
  />
)

export default CustomCarousel
