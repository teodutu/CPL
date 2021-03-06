package cool.AST;

import cool.visitor.ASTVisitor;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;

public class ASTIsVoidNode extends  ASTUnaryOperatorNode {
	public ASTIsVoidNode(ParserRuleContext context, Token symbol, ASTExpressionNode op) {
		super(context, symbol, op);
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visit(this);
	}
}
