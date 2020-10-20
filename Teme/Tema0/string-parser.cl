class StringParser {
	const: Constants <- new Constants;
	atoi: A2I <- new A2I;

	parseString(str: String): Object {
		let tokenizer: StringTokenizer <- new StringTokenizer.init(str),
			token: String <- tokenizer.nextToken()
		in
			if token = new Int.type_name() then
				atoi.a2i(tokenizer.nextToken())
			else if token = new Bool.type_name() then
				let value: String <- tokenizer.nextToken() in
					if value = const.valueTrue() then
						true
					else if value = const.valueFalse() then
						false
					else
						new Object
					fi fi
			else if token = new String.type_name() then
				let value: String <- tokenizer.nextToken() in
					if value = const.emptyString() then
						new Object
					else
						value
					fi
			else if isProduct(token) then
				let name: String <- tokenizer.nextToken(),
					model: String <- tokenizer.nextToken(),
					price: String <- tokenizer.nextToken()
				in
					if name = const.emptyString() then
						new Object
					else if model = const.emptyString() then
						new Object
					else if price = const.emptyString() then
						new Object
					else
						makeProduct(token, name, model, atoi.a2i(price))
					fi fi fi
			else if isRank(token) then
				let name: String <- tokenizer.nextToken() in
					if name = const.emptyString() then
						new Object
					else
						makeRank(token, name)
					fi
			else
				new Object
			fi fi fi fi fi
	};

	isProduct(str: String): Bool {
		if str = new Soda.type_name() then
			true
		else if str = new Coffee.type_name() then
			true
		else if str = new Laptop.type_name() then
			true
		else if str = new Router.type_name() then
			true
		else
			false
		fi fi fi fi
	};

	makeProduct(type: String, name: String, model: String, price: Int): Object {
		if type = new Soda.type_name() then
			new Soda.init(name, model, price)
		else if type = new Coffee.type_name() then
			new Coffee.init(name, model, price)
		else if type = new Laptop.type_name() then
			new Laptop.init(name, model, price)
		else if type = new Router.type_name() then
			new Router.init(name, model, price)
		else
			new Object
		fi fi fi fi
	};

	isRank(str: String): Bool {
		if str = new Private.type_name() then
			true
		else if str = new Corporal.type_name() then
			true
		else if str = new Sergent.type_name() then
			true
		else if str = new Officer.type_name() then
			true
		else
			false
		fi fi fi fi
	};

	makeRank(type: String, name: String): Object {
		if type = new Private.type_name() then
			new Private.init(name)
		else if type = new Corporal.type_name() then
			new Corporal.init(name)
		else if type = new Sergent.type_name() then
			new Sergent.init(name)
		else if type = new Officer.type_name() then
			new Officer.init(name)
		else
			new Object
		fi fi fi fi
	};
};