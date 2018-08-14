

import React,{Component} from 'react'
import ReactDOM from 'react-dom'

import './index.css'

class LikeButton extends Component{
	constructor (){
		super()
		this.stat = {isLiked: false}
	}

	handleClickOnLikeButton(){
		this.setState({
			isLiked:!this.state,isLiked
		})
	}

	render(){
		return (
			<button onClick={this.handleClickOnLIkeButton.bind(this)}>
			{this.state.isLiked ? '取消' : '点赞'} 👍
			</button>
		)
	}

}




class Index extends Component {
	render(){
		return (
			<div>
				<LIkeButton />
			</div>
		)
	}
}

ReactDOM.render(
	<Index />,
	document.getElementById('root')
)









