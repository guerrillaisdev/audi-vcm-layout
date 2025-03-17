# Active Context: VCM Scanner Layout Configuration

## Current Work Focus
The project is currently in the implementation phase. We have established the project requirements, documented the vehicle modifications, and created the initial VCM Scanner layout configuration based on the hptlayout.Layout.xml template.

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

## Next Steps
1. **Testing**: Load the layout into VCM Scanner 5.0.4 and verify it loads correctly
2. **Parameter Verification**: Connect to the vehicle and verify all parameters are reading correctly
3. **Calibration**: Fine-tune gauge ranges and warning thresholds based on actual readings
4. **Validation**: Test the layout under various driving conditions
5. **Refinement**: Make adjustments based on real-world testing
6. **Documentation**: Update documentation with final configuration details

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
1. **Parameter Availability**: Need to confirm all desired parameters are accessible
2. **Modified Component Monitoring**: Determining how best to monitor aftermarket components
3. **Performance Balance**: Creating a comprehensive layout without impacting scanner performance
4. **Warning Thresholds**: Setting appropriate warning levels for modified components
5. **Layout Organization**: Designing an intuitive organization that prioritizes critical information

## Recent Insights
- The K04 turbo upgrade will require adjusted boost pressure ranges in displays
- The upgraded intercooler may affect temperature parameter behavior
- The AEM gauges provide additional data sources that could be incorporated
- The modified exhaust system may change expected values for certain sensors