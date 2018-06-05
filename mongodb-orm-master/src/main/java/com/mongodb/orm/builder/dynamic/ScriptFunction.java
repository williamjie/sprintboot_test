package com.mongodb.orm.builder.dynamic;

import org.apache.commons.lang.StringUtils;
import org.w3c.dom.Node;

import com.mongodb.exception.StatementException;
import com.mongodb.orm.engine.entry.Script;
import com.mongodb.util.ScriptUtils;

/**
 * Dynamic script function.
 * 
 * @author: xiangping_yu
 * @data : 2013-6-8
 * @since : 1.5
 */
public class ScriptFunction implements Function {

  @Override
  public void init(Node node, Class<?> clazz, Dynamic dynamic) {
    String text = node.getTextContent();
    if (StringUtils.isBlank(text)) {
      throw new StatementException("Error node configuration. The 'script' can't be null.");
    }

    dynamic.addFunction(this, new ScriptData(new Script(text, clazz)));
  }

  @Override
  public Object parser(FunctionData data, Object target) {
    ScriptData scriptData = (ScriptData) data;
    Script script = scriptData.script;
    return ScriptUtils.fillScriptParams(script, target);
  }

  class ScriptData implements FunctionData {
    
    Script script;

    public ScriptData(Script script) {
      this.script = script;
    }
  }

}
