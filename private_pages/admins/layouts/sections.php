   <p>Section</p>
                                  <div class="form-group has-feedback">
                                      <select required=""  class="form-control" name="section">
                                        <?php //section?>
                                         <?php $all_section = get_all_section_for_student_who_dont_have_section($year['tbl_yearlevel_id'],$total_students['department'],$total_students['program_major']);
                                                      while($section = mysqli_fetch_assoc($all_section)){
                                                        ?>
                                                     <option value="<?php echo $section['tbl_section_id']?>"><?php echo $section['section_name'] ?> </option>

                                          <?php }?>
                                      </select>
                                    </div>





 <p>Year</p>
                                  <div class="form-group has-feedback">
                                      <select required=""  class="form-control" name="year">
                                        <?php //year?>
                                         <?php $get_year = get_all_year();
                                                      while($year = mysqli_fetch_assoc($get_year)){
                                                        ?>
                                                     <option value="<?php echo $year['tbl_yearlevel_id']?>"><?php echo $year['yearlevel'] ?></option>

                                          <?php }?>
                                      </select>
                                    </div>

                                      <p>Section</p>
                                  <div class="form-group has-feedback">
                                      <select required=""  class="form-control" name="section">
                                        <?php //section?>
                                         <?php $all_section = get_all_section($total_students['department'],$total_students['program_major']);
                                                      while($section = mysqli_fetch_assoc($all_section)){
                                                        ?>
                                                     <option value="<?php echo $section['tbl_section_id']?>"><?php echo $section['section_name'] ?> </option>

                                          <?php }?>
                                      </select>
                                    </div>