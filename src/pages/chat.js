import React, { Component } from "react"
import Layout from "../components/layout"

import chat from "../images/chat.png"

class Chat extends Component {
  render() {
    return (
      <Layout>
        <div className={"chat"}>
          <div>Je vous écoute</div>
          <img src={chat} alt=""/>
        </div>
      </Layout>
    )
  }
}

export default Chat
