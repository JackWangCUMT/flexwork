package com.googlecode.flexwork.core.events
{

	import flash.events.Event;

	/**
	 * LoginEvent extends MessageEvent
	 *
	 * var eventObject:LoginEvent = new LoginEvent();
	 * eventObject.username = username.text;
	 * eventObject.password = username.password;
	 */
	public class MessageEvent extends Event
	{
		private static const PREFIX:String="messageEvent.";

		public static const SAMPLE_CITY_DOUBLE_CLICK:String=PREFIX + "sample.cityDoubleClick";
		/**
		 * The data property can be used to hold information to be passed with the event
		 * in cases where the developer does not want to extend the CairngormEvent class.
		 * However, it is recommended that specific classes are created for each type
		 * of event to be dispatched.
		 */
		public var value:*;

		//public var values:Array = new Array();

		public function MessageEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		override public function clone():Event
		{
			return new MessageEvent(type, bubbles, cancelable);
		}

		//      public function dispatch():Boolean {
		//			return MessageEventDispatcher.getInstance().dispatchEvent(this);
		//      }

	}
}
