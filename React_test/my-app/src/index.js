//import React from 'react';
//import App from './App';
//import registerServiceWorker from './registerServiceWorker';
import ReactDOM from 'react-dom';
import './index.css';
import React,{ Component } from 'react'




const users = [
  { username: 'Jerry', age: 21, gender: 'male'},
  { username: 'Tomy', age: 22, gender: 'male'},
  { username: 'Lily', age:19, gender: 'female'},
  { username: 'Lucy', age: 20, gender: 'female'}
]


class User extends Component {
  render () {
    const {user} = this.props
    return(
      <div>
        <div>姓名：{user.username}</div>
        <div>年龄：{user.age}</div>
        <div>性别：{user.gender}</div>
        <hr />
      </div>
    )
  }
}

class Index extends Component {
   render () {
    return (
      <div>
        {users.map(
          (user,i) => <User key={i} user={user} />
        )}
      </div>
    )
   }
}

/*
class Index extends Component {
   render () {
      return (
        <div>{
            users.map(
              (user) => {
                return (
                    <div>
                      <div>name:{user.username}</div>
                      <div>name:{user.age}</div>
                      <div>name:{user.gender}</div>
                      <hr />
                    </div>
                )
              }
            )
          }
        </div>
      )
   }
}

*/
/*
class Index extends Component {
   render () {
      const usersElements = []
      for (let user of users) {
        usersElements.push(
          <div>
            <div>name:{user.username}</div>
            <div>age:{user.age}</div>
            <div>sex:{user.gender}</div>
            <hr />
          </div>
        )
      }

      return(
        <div>{usersElements}</div>
      )
   }
}
*/
ReactDOM.render(
  <Index />,
  document.getElementById('root')
)





/*
class LikeButton extends Component {
  constructor () {
    super()
    this.state = { isLiked: false}
  }

  handleClickOnLikeButton () {
    this.setState({
      isLiked: !this.state.isLiked
    })
  }

  render (){
    console.log("this.props:",this.props)
    const likedText = this.props.likedText || '取消'
    const unLikedText = this.props.unLikedText || '点赞'
    return(
      <button onClick={this.handleClickOnLikeButton.bind(this)}>
        {this.state.isLiked ? likedText : unLikedText}
      </button>
    )
  }
}
class Index extends Component {
  render () {
    return (
      <div>
        <LikeButton likedText='已赞' unLikedText='赞' />
      </div>
    )
  }
}



const HelloWorld = (props) => {
  const sayHi = (event) => alert('Hello World')
  return (
    <div onClick={this.sayHi.bind(this)}>Hello World</div>
  )
}

ReactDOM.render(
  <Index />,
  document.getElementById('root')
)
*/

/*
class LikeButton extends Component {
  constructor (props) {
    super(props)
    this.state = {
      name: 'Tomy',
      isLiked: false
    }
  }

  handleClickOnLikeButton () {
    //console.log("before isLiked:",this.state.isLiked)
    this.setState(
    {
      isLiked: !this.state.isLiked,
      name: Math.random().toString(36).substr(2),
      count:0
    })
    console.log("after isLiked:",this.state.isLiked," name:",this.state.name)
  }

  handleClickOnLikeButton1 (){
    this.setState((prevState) => {
      return {count:0}
    })
    console.log("count1:",this.state.count)
    this.setState((prevState) => {
      return {count:prevState.count +1}
    })
    console.log("count2:",this.state.count)

    this.setState((prevState) => {
      return {count:prevState.count +1}
    })
    console.log("count3:",this.state.count)

  }

  render(){
    return(
      <button onClick={this.handleClickOnLikeButton1.bind(this)}>
        {this.state.isLiked?'取消' : '点赞'} 👍
      </button>

    )
  }
}
*/



/*
class Title extends Component {
   handleClickOnTitle (word,e) {
      console.log(e.target.innerHTML)
      console.log("this:",this," word:",word)
   }

   render (){
      return (
        <h1 onClick={this.handleClickOnTitle.bind(this,'HelloTest')}>React book</h1>
      )
   }
}

ReactDOM.render(
  <Title />,
  document.getElementById('root')
)
*/


/*
class Title extends Component {
   handleClickOnTitle() {
      console.log('Click on title ******')
   }

   render () {
      return (
        <h1 onClick={this.handleClickOnTitle}>React Book</h1>
      )
   }
}

ReactDOM.render(
  <Title />,
  document.getElementById('root')
)
*/


/*
class Title extends Component {
   render () {
    return (
      <h1>React book</h1>
    )
   }
}

class Header extends Component {
  render () {
    return (
    <div>
      <Title />
      <h2>This is header</h2>
    </div>
    )
  }
}

class Main extends Component {
   render() {
     return(
      <div>
        <h2>This is main content</h2>
      </div>
     )
   }
}

class Footer extends Component {
  render (){
    return (
      <div>
        <h2>This is footer</h2>
      </div>
    )
  }
}

class Index extends Component {
  render (){
    return (
      <div>
        <Header />
        <Main />
        <Footer />
      </div>
    )
  }
}


ReactDOM.render(
  <Index />,
  document.getElementById('root')
)
*/

/*
class Header extends Component {
  render(){
    return (
      <div>
        <h1>React 小书</h1>
      </div>
    )
  }
}
*/

/*
class Header extends Component {
  render(){
    const word = 'is good'
    return (
      <div>
      <h1>React 小书{word}</h1>
      </div>
    )
  }
}
*/

/*
class Header extends Component {
  render () {
    const className = 'header'
    return (
      <div className={className}>
       <h1>React 小书</h1>
      </div>
    )
  }
}
*/

/*
class Header extends Component {
  render (){
    const isGoodWord = true
    return (
      <div>
        <h1>
          React 小书
          {
            isGoodWord?<strong> is good </strong>
            : <span> is not good </span>
          }
        </h1>
      </div>
    )
  }
}
*/

/*
class Header extends Component {
  render (){
    const isGoodWord = true
    const goodWord = <strong> is good </strong>
    const badWord = <span> is not good </span>
    return (
      <div>
        <h1>
          React Book
          {isGoodWord ? goodWord : badWord}
        </h1>
      </div>
    )
  }
}
*/

/*
class Header extends Component {

  renderGoodWord (goodWord, badWord) {
    const isGoodWord = true
    return isGoodWord ? goodWord : badWord
  }


  render () {
    return (
      <div>
        <h1>
          React Book
          {
            this.renderGoodWord(
              <strong> is good </strong>,
              <span> is not good </span>
            )
          }
        </h1>
      </div>
    )
  }
}

*/

/*
class Header extends Component {
  render () {
    const numWord = 0
    const hasWord = <span> have {numWord} message </span>
    const noWord = <span> has not message </span>
    const title = <div className='title'>ScriptOJ</div>
    const page = <div className='content'>xxx{title}</div>
    return (
      numWord>0?title:page
    )
  }
}


ReactDOM.render(
  <Header />,
  document.getElementById('root')
)
*/

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