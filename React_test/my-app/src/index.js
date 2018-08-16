//import React from 'react';
//import App from './App';
//import registerServiceWorker from './registerServiceWorker';
import ReactDOM from 'react-dom';
import './index.css';

import React,{ Component } from 'react'

class Header extends Component {
  render(){
    return (
      <div>
        <h1>React 小书</h1>
      </div>
    )
  }
}

ReactDOM.render(
  <Header />,
  document.getElementById('root')
)


/*
class LikeButton extends Component {
    constructor () {
      super()
      this.state = { isLiked: false }
    }

    onClick () {
      this.setState({
        isLiked: !this.state.isLiked
      })
    }

    render () {
      return `
        <button class='like-btn'>
          <span class='like-text'>${this.state.isLiked ? '取消' : '点赞'}</span>
          <span>👍</span>
        </button>
      `
    }
  }

mount(new LikeButton(), wrapper)
ReactDOM.render(
  <App />, 
  document.getElementById('root')
)
registerServiceWorker()
*/