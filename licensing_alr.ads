with Alire.Project; use Alire.Project;

package Licensing_Alr is

   Working_Release : constant Release := Set_Root_Project (
      "licensing",
      V ("0.0.0-alr_working_copy"));

   --  An explicit dependency on alr is only needed if you want to compile this file.
   --  To do so, include the "alr.gpr" project in your own project file.
   --  Once you are satisfied with your own dependencies it can be safely removed.

end Licensing_Alr;
