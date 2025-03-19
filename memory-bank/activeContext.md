# Active Context: VCM Scanner Layout Configuration

## Current Work Focus
The project is transitioning from the implementation phase to the testing phase. We have established the project requirements, documented the vehicle modifications, created the VCM Scanner layout configuration, and set up deployment methods to facilitate testing.

## Recent Changes
1. Created Memory Bank documentation structure
2. Documented project brief with core requirements
3. Listed vehicle modifications that will influence parameter selection
4. Established product context and system patterns
5. Analyzed the hptlayout.Layout.xml template structure
6. Created the audi-k04-layout.Layout.xml file with:
   - Primary gauge cluster with RPM, Boost, AFR, MAF, ECT, IAT gauges
   - Secondary bar gauges for additional parameters
   - Digital dashboard with 16 key parameters
   - Engine Performance graph with RPM, Speed, Boost, and Throttle
   - Fueling & Timing graph with AFR, STFT, LTFT, Timing, and Knock
   - Math channels for AFR calculation, Boost PSI conversion, and Injector duty cycle
   - Triggers for WOT logging, Knock event detection, and High boost monitoring
7. Deployed the layout file to VCM Scanner Layouts directory
8. Created deployment scripts:
   - create_symlink.bat - For creating a symbolic link (requires admin privileges)
   - update_layout.ps1 - For quickly copying updated layout files
9. Added comprehensive K04 Performance Charts organized into separate tabs:
   - K04 Air/Boost Charts tab:
     - Air Flow and Pressure chart (MAF, MAP, Calculated Boost PSI)
     - Knock and Timing chart with RPM correlation
   - K04 Boost Control tab:
     - Boost Control chart with N75 duty cycle monitoring
     - Temperature monitoring chart (IAT, ECT, Oil Temperature)
   - Added K04 Fueling Charts as a sub-tab under Fueling & Timing:
     - Fueling chart with AFR and injector pulse width
     - Fuel Trims chart with injector duty cycle monitoring

## Next Steps
1. **Initial Testing**:
   - Open VCM Scanner 5.0.4
   - Load the audi-k04-layout.Layout.xml file
   - Verify all tabs, gauges, and displays appear correctly
   - Check for any XML parsing errors

2. **Parameter Verification**:
   - Connect to the vehicle using VCM Scanner
   - Verify all parameters are reading correctly
   - Pay special attention to parameters marked as "Assuming this is the parameter ID for..."
   - Document any parameters that aren't available or need different IDs

3. **Calibration**:
   - With the vehicle running, observe actual parameter ranges
   - Adjust min/max values and warning thresholds based on real readings
   - Focus on boost pressure ranges for the K04 turbo
   - Verify temperature ranges with the upgraded intercooler

4. **Math Channel Validation**:
   - Compare calculated values with direct readings where possible
   - Verify the AFR calculation against the AEM wideband gauge
   - Confirm boost PSI conversion accuracy
   - Test injector duty cycle calculation under various loads

5. **Trigger Testing**:
   - Test each trigger under appropriate conditions
   - Verify WOT detection during full throttle acceleration
   - Check knock detection sensitivity
   - Test high boost monitoring during performance driving

6. **Refinement**:
   - Make adjustments based on real-world testing
   - Update parameter IDs if needed
   - Fine-tune warning thresholds
   - Optimize layout for usability

7. **Documentation**:
   - Update Memory Bank with final configuration details
   - Document any parameter ID corrections
   - Record actual performance characteristics
   - Note any limitations or issues discovered

## Active Decisions and Considerations

### Parameter Selection
- Need to determine which parameters are most critical for monitoring the K04 turbo upgrade
- Must decide on appropriate ranges for boost pressure given the turbo upgrade
- Need to consider how to best monitor the health of the upgraded components
- Must determine if stock sensors provide adequate data or if additional parameters are needed

### Display Organization
- Considering how many tabs to create and how to organize them
- Evaluating whether to prioritize a single comprehensive view or multiple specialized views
- Determining the most effective gauge types for each parameter
- Deciding on color schemes for warning thresholds

### Math Channel Implementation
- Need to determine exact formulas for calculated values
- Must decide which derived parameters provide the most value
- Considering performance impact of complex calculations
- Evaluating whether to implement AFR calculation from Lambda or use direct AFR values

### Trigger Configuration
- Determining optimal threshold for WOT detection (currently planning 80% throttle)
- Evaluating appropriate knock detection sensitivity
- Considering additional triggers beyond the required ones
- Deciding on appropriate logging duration for triggered events

### Testing Approach
- Need to develop a systematic testing procedure
- Must determine test conditions to validate all aspects of the layout
- Considering how to verify math channel accuracy
- Planning for iterative refinement based on real-world testing

## Current Challenges
1. **Parameter Availability**: Need to confirm all assumed parameter IDs are correct and accessible
2. **Modified Component Monitoring**: Determining how best to monitor aftermarket components
3. **Performance Balance**: Ensuring the comprehensive layout doesn't impact scanner performance
4. **Warning Thresholds**: Validating appropriate warning levels for modified components
5. **Layout Organization**: Confirming the organization is intuitive during actual use
6. **Deployment Workflow**: Establishing an efficient workflow for testing and updating the layout
7. **AEM Gauge Integration**: Determining how to incorporate data from the AEM gauges

## Recent Insights
- The K04 turbo upgrade requires adjusted boost pressure ranges in displays (currently set to -15 to 30 PSI)
- The upgraded intercooler may affect temperature parameter behavior (IAT ranges set to 30-150°F)
- The AEM gauges provide additional data sources that could be incorporated for more accurate monitoring
- The modified exhaust system may change expected values for certain sensors
- Several parameter IDs are currently assumptions and need verification
- Two deployment methods have been created:
  - Symbolic link approach (requires admin privileges) for automatic updates
  - File copy approach for quick updates without admin privileges
- Comprehensive chart monitoring is essential for K04 tuning:
  - Correlation between N75 duty cycle and boost pressure is critical for proper boost control
  - Knock detection with timing correlation helps identify problematic RPM/load points
  - Injector duty cycle monitoring helps prevent maxing out stock injectors
  - Temperature monitoring is more important with increased power output
  - Reference lines added to charts for quick identification of critical thresholds
- Layout organization is important for usability:
  - Separating charts into dedicated tabs prevents overcrowding
  - Grouping related parameters (air/boost, fueling, boost control) improves workflow
  - Focused tabs allow for larger, more readable charts
  - Placing related charts in logical hierarchies (fueling charts under Fueling & Timing tab) improves navigation