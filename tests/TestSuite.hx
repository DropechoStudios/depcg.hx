import massive.munit.TestSuite;

import modules.AbsTest;
import modules.AddTest;
import modules.CheckerBoardTest;
import modules.ClampTest;
import modules.ConstantTest;
import modules.InvertTest;
import modules.MaxTest;
import modules.MinTest;
import modules.ModuleTest;
import modules.MultiplyTest;
import modules.PowerTest;
import modules.StepTest;

/**
 * Auto generated Test Suite for MassiveUnit.
 * Refer to munit command line tool for more information (haxelib run munit)
 */

class TestSuite extends massive.munit.TestSuite
{		

	public function new()
	{
		super();

		add(modules.AbsTest);
		add(modules.AddTest);
		add(modules.CheckerBoardTest);
		add(modules.ClampTest);
		add(modules.ConstantTest);
		add(modules.InvertTest);
		add(modules.MaxTest);
		add(modules.MinTest);
		add(modules.ModuleTest);
		add(modules.MultiplyTest);
		add(modules.PowerTest);
		add(modules.StepTest);
	}
}
