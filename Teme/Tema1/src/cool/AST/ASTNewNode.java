package cool.AST;

import cool.visitor.ASTVisitor;
import org.antlr.v4.runtime.Token;

public class ASTNewNode extends ASTExpressionNode {
	private final Token type;

	public ASTNewNode(Token type) {
		super("new");
		this.type = type;
	}

	public Token getType() {
		return type;
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visit(this);
	}
}
