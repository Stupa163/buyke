import React from "react"
import { graphql, Link } from "gatsby"
import Layout from "../components/layout"
import "font-awesome/css/font-awesome.min.css"
import { Button } from "react-bootstrap"
import ListGroup from "react-bootstrap/ListGroup"
import Description from "../components/description"

export const query = graphql`
    query($path: String!) {
        markdownRemark(frontmatter: {path: {eq:$path}}) {
            frontmatter {
                description
                image
                price
                title
            }
        }
    }
`

export default ({ data }) => {
  const Rating =
    <div className="rating">
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star"/>
      <i className="fa fa-star-half-empty"/>
    </div>

  return (
    <Layout>
      <link rel="stylesheet" href="https://cdn.snipcart.com/themes/v3.0.12/default/snipcart.css" />

      <div className={"product"}>
        <ListGroup horizontal>
          <ListGroup.Item><Link to={"/"}>Accueil</Link> </ListGroup.Item>
          <ListGroup.Item><Link to={"/products"}>Produits</Link></ListGroup.Item>
          <ListGroup.Item><Link to={"#"}>{data.markdownRemark.frontmatter.title}</Link></ListGroup.Item>
        </ListGroup>
        <div className={"main row"}>
          <div className={"infos col-md-6"}>
            <div className={"title"}>{data.markdownRemark.frontmatter.title}</div>
            {Rating}
            <hr/>
            <div className="price">
              {data.markdownRemark.frontmatter.price} €
            </div>
            <br/>
            <div className={"descriptionProduct"}>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt ea tempore? Amet delectus,
              dolor eius magni neque quam recusandae similique sint sunt ullam. Ab adipisci assumenda eius molestiae
              rem.
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aperiam consectetur consequuntur dolor dolore
              dolorum eaque, enim ipsa laudantium minus nam nesciunt, nihil nostrum pariatur, perferendis porro
              provident quam unde.
            </div>
            <Button className={"buyNow snipcart-add-item"}
                    variant="danger"
                    data-item-id="1"
                    data-item-price="79.99"
                    data-item-url="/"
                    data-item-description="High-quality replica of The Starry Night by the Dutch post-impressionist painter Vincent van Gogh."
                    data-item-name="The Starry Night">
              Acheter maintenant</Button>
          </div>
          <div className="col-md-6">
            <img src={data.markdownRemark.frontmatter.image} alt=""/>
          </div>
        </div>
        <Description data={data.markdownRemark.frontmatter.image}/>
      </div>
    </Layout>
  )
}
