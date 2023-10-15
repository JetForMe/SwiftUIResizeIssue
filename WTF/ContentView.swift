//
//  ContentView.swift
//  WTF
//
//  Created by Rick Mann on 2023-10-14.
//

import SwiftUI


struct ContentView: View
{
	var
	body: some View
	{
		HStack
		{
			SettingsView()
			
			BuySubscriptionView()
				.frame(minWidth: 250.0)
				.padding()
				.background(.yellow)
		}
	}
}

struct
SettingsView: View
{
	var
	body: some View
	{
		VStack(alignment: .center)
		{
#if false
				Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ")
					.frame(maxWidth: .infinity)			//	Has no effect, no matter where placed
					.font(.system(size: 36.0))
					.multilineTextAlignment(.leading)
					.padding([.top, .leading], 10.0)
					.background(.blue)
#else
			HStack			//	Was an attempt to get the text to leading-edge align, as no apparent effect
			{
				Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ")
					.frame(maxWidth: .infinity)			//	Has no effect, no matter where placed
					.font(.system(size: 36.0))
					.multilineTextAlignment(.leading)
					.padding([.top, .leading], 10.0)
					
				Spacer()								//	Removing this changes (I think) the nature of the resize operation (it's chunkier), but not the overall result
			}
			.padding(0)
			.frame(maxWidth: .infinity)					//	Has no effect, no matter where placed
			.background(.blue)
#endif

			Toggle(isOn: self.$isOn)
			{
				Text("A Toggle")
					.font(.system(size: 36))
			}
			.controlSize(.large)						//	Seems to have no effect on macOS
			.toggleStyle(.switch)
			
			Spacer()
			
			Image("keyboard")
		}
		.background(.red)
	}
	
	@State	private	var	isOn								=	false
}

struct
BuySubscriptionView : View
{
	var
	body: some View
	{
		VStack
		{
			Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud")
			
			ProductButton()
				.background(.green)
		}
	}
}

struct
ProductButton : View
{
	var
	body: some View
	{
		Button(action: {})
		{
			Text("Product Button")
				.frame(maxWidth: .infinity)			//	Remove this, and the left column sizing issue goes away
		}
	}
}

#Preview("SettingsView")
{
	SettingsView()
		.padding(.top, 50)							//	Without this, the preview cuts off the top of the text
}

#Preview("BuySubscriptionView")
{
	BuySubscriptionView()
}

#Preview("ContentView")
{
	ContentView()
}

