package cool.AST;

import cool.visitor.ASTVisitor;
import org.antlr.v4.runtime.Token;

public class ASTRelOpNode extends ASTBinaryOperatorNode {
	public ASTRelOpNode(Token symbol, ASTExpressionNode leftOp, ASTExpressionNode rightOp) {
		super(symbol, leftOp, rightOp);
	}

	@Override
	public <T> T accept(ASTVisitor<T> visitor) {
		return visitor.visit(this);
	}
}
